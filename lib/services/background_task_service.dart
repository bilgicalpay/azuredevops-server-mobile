/// Arka plan görev servisi
/// 
/// Uygulama kapalıyken bile çalışarak work item değişikliklerini kontrol eder.
/// Periyodik kontroller yaparak yeni atamalar ve güncellemeler için bildirim gönderir.
/// 
/// @author Alpay Bilgiç

import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'work_item_service.dart';
import 'notification_service.dart';

/// Arka plan görev servisi sınıfı
/// Uygulama kapalıyken bile periyodik kontroller yapar
class BackgroundTaskService {
  static final BackgroundTaskService _instance = BackgroundTaskService._internal();
  factory BackgroundTaskService() => _instance;
  BackgroundTaskService._internal();

  Timer? _backgroundTimer;
  bool _isRunning = false;
  final WorkItemService _workItemService = WorkItemService();
  final NotificationService _notificationService = NotificationService();
  Map<int, int> _workItemRevisions = {};
  Set<int> _knownWorkItemIds = {};
  Set<int> _notifiedWorkItemIds = {}; // Track which work items we've already notified about

  /// Initialize the service (called on app start)
  Future<void> init() async {
    // This method exists for consistency with other services
    // Actual initialization happens in initializeTracking()
  }

  /// Start background task
  Future<void> start() async {
    if (_isRunning) return;
    
    _isRunning = true;
    print('Background task service started');
    
    // Initial check
    await _checkForChanges();
    
    // Start periodic checks - every 2 minutes
    _backgroundTimer?.cancel();
    _backgroundTimer = Timer.periodic(const Duration(minutes: 2), (timer) async {
      if (!_isRunning) {
        timer.cancel();
        return;
      }
      
      await _checkForChanges();
    });
  }

  /// Stop background task
  void stop() {
    _isRunning = false;
    _backgroundTimer?.cancel();
    _backgroundTimer = null;
    print('Background task service stopped');
  }

  /// Check for work item changes
  Future<void> _checkForChanges() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final serverUrl = prefs.getString('server_url');
      final collection = prefs.getString('collection');
      
      // Token'ı güvenli depolamadan al
      const secureStorage = FlutterSecureStorage();
      final token = await secureStorage.read(key: 'auth_token');
      
      if (serverUrl == null || token == null) {
        print('Background check: No auth data');
        return;
      }

      print('Background check: Checking for work item changes...');
      
      final workItems = await _workItemService.getWorkItems(
        serverUrl: serverUrl,
        token: token,
        collection: collection,
      );

      for (var workItem in workItems) {
        final currentRev = workItem.rev ?? 0;
        final knownRev = _workItemRevisions[workItem.id];
        
        if (!_knownWorkItemIds.contains(workItem.id)) {
          // New work item - this is truly new (not in our tracking)
          _knownWorkItemIds.add(workItem.id);
          _workItemRevisions[workItem.id] = currentRev;
          
          // Always notify for new work items (they're not in _notifiedWorkItemIds yet)
          await _notificationService.showWorkItemNotification(
            workItemId: workItem.id,
            title: workItem.title,
            body: 'Size yeni bir work item atandı: ${workItem.type}',
          );
          _notifiedWorkItemIds.add(workItem.id);
          await _saveLastNotifiedRevision(workItem.id, currentRev);
          print('Background: New work item #${workItem.id} - notification sent');
        } else if (knownRev != null && currentRev > knownRev) {
          // Work item changed - check if we've already notified for this revision
          final lastNotifiedRev = await _getLastNotifiedRevision(workItem.id);
          
          if (lastNotifiedRev == null || currentRev > lastNotifiedRev) {
            _workItemRevisions[workItem.id] = currentRev;
            
            await _notificationService.showWorkItemNotification(
              workItemId: workItem.id,
              title: workItem.title,
              body: 'Work item güncellendi: ${workItem.state}',
            );
            
            await _saveLastNotifiedRevision(workItem.id, currentRev);
            print('Background: Work item #${workItem.id} changed (rev: $knownRev -> $currentRev) - notification sent');
          } else {
            print('Background: Work item #${workItem.id} changed but already notified for rev $currentRev (last notified: $lastNotifiedRev)');
          }
        } else if (knownRev == null) {
          // First time seeing this work item in tracking
          _workItemRevisions[workItem.id] = currentRev;
        }
      }

      // Update known IDs
      _knownWorkItemIds = workItems.map((item) => item.id).toSet();
      _workItemRevisions.removeWhere((id, _) => !_knownWorkItemIds.contains(id));
      
    } catch (e) {
      print('Background check error: $e');
    }
  }

  /// Get last notified revision for a work item
  Future<int?> _getLastNotifiedRevision(int workItemId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getInt('notified_rev_$workItemId');
    } catch (e) {
      return null;
    }
  }

  /// Save last notified revision for a work item
  Future<void> _saveLastNotifiedRevision(int workItemId, int revision) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('notified_rev_$workItemId', revision);
    } catch (e) {
      print('Error saving notified revision: $e');
    }
  }

  /// Reset tracking data
  void reset() {
    _knownWorkItemIds.clear();
    _workItemRevisions.clear();
    _notifiedWorkItemIds.clear();
  }

  /// Initialize tracking data from storage (called on app start)
  Future<void> initializeTracking() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final serverUrl = prefs.getString('server_url');
      final collection = prefs.getString('collection');
      
      // Token'ı güvenli depolamadan al
      const secureStorage = FlutterSecureStorage();
      final token = await secureStorage.read(key: 'auth_token');
      
      if (serverUrl == null || token == null) {
        return;
      }

      // Load current work items to initialize tracking
      final workItems = await _workItemService.getWorkItems(
        serverUrl: serverUrl,
        token: token,
        collection: collection,
      );

      // Initialize tracking without sending notifications
      // Only mark as "known" - don't mark as "notified" so new items can still trigger notifications
      for (var workItem in workItems) {
        _knownWorkItemIds.add(workItem.id);
        _workItemRevisions[workItem.id] = workItem.rev ?? 0;
        
        // Load last notified revision from storage
        final lastNotifiedRev = await _getLastNotifiedRevision(workItem.id);
        if (lastNotifiedRev != null && lastNotifiedRev >= (workItem.rev ?? 0)) {
          // This work item was already notified for this or a later revision
          // Mark as notified to prevent duplicate notifications
          _notifiedWorkItemIds.add(workItem.id);
        }
        // If no stored revision or current rev is newer, don't mark as notified
        // This allows new notifications for items that were created before app start
      }

      print('Background: Initialized tracking for ${workItems.length} work items (${_notifiedWorkItemIds.length} already notified)');
    } catch (e) {
      print('Error initializing tracking: $e');
    }
  }
}

