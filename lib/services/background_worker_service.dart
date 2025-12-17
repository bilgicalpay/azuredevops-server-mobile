/// Background Worker Servisi
/// 
/// Flutter Background Service kullanarak uygulama kapalıyken bile
/// periyodik olarak work item kontrolü yapar.
/// 
/// @author Alpay Bilgiç

import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_background_service_android/flutter_background_service_android.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'work_item_service.dart' show WorkItemService, WorkItem;
import 'notification_service.dart';

/// Background Worker Servisi
class BackgroundWorkerService {
  static const String notificationChannelId = 'work_item_check';
  static const String notificationChannelName = 'Work Item Check';
  
  /// Initialize background service
  static Future<void> initialize() async {
    final service = FlutterBackgroundService();
    
    await service.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: onStart,
        autoStart: true,
        isForegroundMode: false,
        notificationChannelId: notificationChannelId,
        initialNotificationTitle: 'Azure DevOps',
        initialNotificationContent: 'Work item kontrolü çalışıyor',
        foregroundServiceNotificationId: 888,
      ),
      iosConfiguration: IosConfiguration(
        autoStart: true,
        onForeground: onStart,
        onBackground: onIosBackground,
      ),
    );
    
    print('✅ [BackgroundWorkerService] Background service initialized');
  }
  
  /// Start background service
  static Future<void> start() async {
    final service = FlutterBackgroundService();
    final isRunning = await service.isRunning();
    
    if (!isRunning) {
      await service.startService();
      print('✅ [BackgroundWorkerService] Background service started');
    } else {
      print('ℹ️ [BackgroundWorkerService] Background service already running');
    }
  }
  
  /// Stop background service
  static Future<void> stop() async {
    final service = FlutterBackgroundService();
    final isRunning = await service.isRunning();
    
    if (isRunning) {
      service.invoke('stopService');
      print('✅ [BackgroundWorkerService] Background service stop requested');
    }
  }
}

/// iOS background handler
@pragma('vm:entry-point')
Future<bool> onIosBackground(ServiceInstance service) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  return true;
}

/// Android/iOS foreground handler
@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  
  if (service is AndroidServiceInstance) {
    service.on('setAsForeground').listen((event) {
      service.setAsForegroundService();
    });
    
    service.on('setAsBackground').listen((event) {
      service.setAsBackgroundService();
    });
  }
  
  service.on('stopService').listen((event) {
    service.stopSelf();
  });
  
  // Main loop - check for work items periodically
  Timer? checkTimer;
  
  service.on('startCheck').listen((event) async {
    // Get polling interval from settings
    final prefs = await SharedPreferences.getInstance();
    final pollingIntervalSeconds = prefs.getInt('polling_interval_seconds') ?? 15;
    
    // Cancel existing timer
    checkTimer?.cancel();
    
    // Start periodic checks
    checkTimer = Timer.periodic(Duration(seconds: pollingIntervalSeconds), (timer) async {
      if (service is AndroidServiceInstance) {
        if (await service.isForegroundService()) {
          service.setForegroundNotificationInfo(
            title: 'Azure DevOps',
            content: 'Work item kontrolü yapılıyor...',
          );
        }
      }
      
      await _checkForWorkItems(service);
    });
    
    // Do immediate check
    await _checkForWorkItems(service);
  });
  
  // Start checking immediately
  service.invoke('startCheck');
  
  // Keep service alive
  Timer.periodic(const Duration(seconds: 1), (timer) async {
    if (service is AndroidServiceInstance) {
      if (await service.isForegroundService()) {
        service.setForegroundNotificationInfo(
          title: 'Azure DevOps',
          content: 'Work item kontrolü aktif',
        );
      }
    }
  });
}

/// Check for work item changes
Future<void> _checkForWorkItems(ServiceInstance service) async {
  try {
    print('🔄 [BackgroundWorker] Checking for work item changes...');
    
    // Get auth data from storage
    final prefs = await SharedPreferences.getInstance();
    final serverUrl = prefs.getString('server_url');
    final collection = prefs.getString('collection');
    
    const secureStorage = FlutterSecureStorage();
    final token = await secureStorage.read(key: 'auth_token');
    
    if (serverUrl == null || token == null) {
      print('❌ [BackgroundWorker] No auth data available');
      return;
    }

    // Initialize notification service
    await NotificationService().init();
    
    // Get work items
    final workItemService = WorkItemService();
    final workItems = await workItemService.getWorkItems(
      serverUrl: serverUrl,
      token: token,
      collection: collection,
    ).timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        print('⏱️ [BackgroundWorker] Request timeout');
        return <WorkItem>[];
      },
    );

    // Load tracking data
    final knownWorkItemIds = prefs.getStringList('known_work_item_ids')?.map((e) => int.parse(e)).toSet() ?? <int>{};
    final workItemRevisions = <int, int>{};
    final workItemAssignees = <int, String?>{};
    final workItemChangedDates = <int, DateTime?>{};
    
    // Load revision data
    for (final id in knownWorkItemIds) {
      final rev = prefs.getInt('work_item_rev_$id');
      if (rev != null) workItemRevisions[id] = rev;
      
      final assignee = prefs.getString('work_item_assignee_$id');
      workItemAssignees[id] = assignee;
      
      final changedDateStr = prefs.getString('work_item_changed_date_$id');
      if (changedDateStr != null) {
        workItemChangedDates[id] = DateTime.tryParse(changedDateStr);
      }
    }

    final notificationService = NotificationService();
    bool hasChanges = false;

    for (var workItem in workItems) {
      final currentRev = workItem.rev ?? 0;
      final knownRev = workItemRevisions[workItem.id];
      final currentAssignee = workItem.assignedTo;
      final knownAssignee = workItemAssignees[workItem.id];
      final currentChangedDate = workItem.changedDate;
      final knownChangedDate = workItemChangedDates[workItem.id];
      
      if (!knownWorkItemIds.contains(workItem.id)) {
        // New work item
        print('🆕 [BackgroundWorker] New work item detected: #${workItem.id}');
        hasChanges = true;
        
        await notificationService.showWorkItemNotification(
          workItemId: workItem.id,
          title: workItem.title,
          body: 'Size yeni bir work item atandı: ${workItem.type}',
        );
        
        // Update tracking
        knownWorkItemIds.add(workItem.id);
        workItemRevisions[workItem.id] = currentRev;
        workItemAssignees[workItem.id] = currentAssignee;
        if (currentChangedDate != null) {
          workItemChangedDates[workItem.id] = currentChangedDate;
        }
      } else {
        // Check for changes
        bool shouldNotify = false;
        String notificationBody = '';
        
        // Check assignee change
        if (knownAssignee != currentAssignee) {
          shouldNotify = true;
          if (currentAssignee != null && currentAssignee.isNotEmpty) {
            notificationBody = 'Work item size atandı: ${workItem.type}';
          } else {
            notificationBody = 'Work item ataması kaldırıldı';
          }
          workItemAssignees[workItem.id] = currentAssignee;
          print('👤 [BackgroundWorker] Work item #${workItem.id} assignee changed');
        }
        
        // Check revision change
        if (knownRev != null && currentRev > knownRev) {
          shouldNotify = true;
          if (notificationBody.isEmpty) {
            notificationBody = 'Work item güncellendi: ${workItem.state}';
          }
          workItemRevisions[workItem.id] = currentRev;
          print('📝 [BackgroundWorker] Work item #${workItem.id} revision changed');
        }
        
        // Check changed date
        if (currentChangedDate != null && knownChangedDate != null) {
          if (currentChangedDate.isAfter(knownChangedDate)) {
            shouldNotify = true;
            if (notificationBody.isEmpty) {
              notificationBody = 'Work item güncellendi: ${workItem.state}';
            }
            workItemChangedDates[workItem.id] = currentChangedDate;
          }
        } else if (currentChangedDate != null) {
          workItemChangedDates[workItem.id] = currentChangedDate;
        }
        
        if (shouldNotify) {
          print('✅ [BackgroundWorker] Sending notification for work item #${workItem.id}');
          hasChanges = true;
          await notificationService.showWorkItemNotification(
            workItemId: workItem.id,
            title: workItem.title,
            body: notificationBody,
          );
        }
        
        // Update tracking
        workItemRevisions[workItem.id] = currentRev;
        workItemAssignees[workItem.id] = currentAssignee;
        if (currentChangedDate != null) {
          workItemChangedDates[workItem.id] = currentChangedDate;
        }
      }
    }

    // Save tracking data
    await prefs.setStringList('known_work_item_ids', knownWorkItemIds.map((e) => e.toString()).toList());
    for (final entry in workItemRevisions.entries) {
      await prefs.setInt('work_item_rev_${entry.key}', entry.value);
    }
    for (final entry in workItemAssignees.entries) {
      if (entry.value != null) {
        await prefs.setString('work_item_assignee_${entry.key}', entry.value!);
      } else {
        await prefs.remove('work_item_assignee_${entry.key}');
      }
    }
    for (final entry in workItemChangedDates.entries) {
      if (entry.value != null) {
        await prefs.setString('work_item_changed_date_${entry.key}', entry.value!.toIso8601String());
      } else {
        await prefs.remove('work_item_changed_date_${entry.key}');
      }
    }

    // Remove tracking for items no longer assigned
    final currentIds = workItems.map((item) => item.id).toSet();
    for (final id in knownWorkItemIds) {
      if (!currentIds.contains(id)) {
        await prefs.remove('work_item_rev_$id');
        await prefs.remove('work_item_assignee_$id');
        await prefs.remove('work_item_changed_date_$id');
      }
    }

    if (hasChanges) {
      print('✅ [BackgroundWorker] Changes detected and notifications sent');
    } else {
      print('ℹ️ [BackgroundWorker] No changes detected');
    }
  } catch (e, stackTrace) {
    print('❌ [BackgroundWorker] Error checking work items: $e');
    print('❌ [BackgroundWorker] Stack trace: $stackTrace');
  }
}

