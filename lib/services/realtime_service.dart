/// Gerçek zamanlı servis
/// 
/// WebSocket kullanarak gerçek zamanlı work item güncellemelerini dinler.
/// WebSocket mevcut değilse optimize edilmiş polling mekanizmasına geçer.
/// 
/// @author Alpay Bilgiç

import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'work_item_service.dart';
import 'notification_service.dart';
import 'auth_service.dart';
import 'storage_service.dart';

/// Gerçek zamanlı servis sınıfı
/// WebSocket veya polling ile gerçek zamanlı güncellemeleri dinler
class RealtimeService {
  static final RealtimeService _instance = RealtimeService._internal();
  factory RealtimeService() => _instance;
  RealtimeService._internal();

  WebSocketChannel? _channel;
  Timer? _reconnectTimer;
  Timer? _heartbeatTimer;
  bool _isConnected = false;
  bool _shouldReconnect = false;
  int _reconnectAttempts = 0;
  static const int maxReconnectAttempts = 5;
  
  final WorkItemService _workItemService = WorkItemService();
  final NotificationService _notificationService = NotificationService();
  Set<int> _knownWorkItemIds = {};
  
  // Callbacks
  Function(List<int>)? onNewWorkItems;
  Function(String)? onError;
  Function()? onConnected;
  Function()? onDisconnected;

  /// Start real-time monitoring
  Future<void> start({
    required AuthService authService,
    required StorageService storageService,
    Function(List<int>)? onNewWorkItems,
    Function(String)? onError,
    Function()? onConnected,
    Function()? onDisconnected,
  }) async {
    this.onNewWorkItems = onNewWorkItems;
    this.onError = onError;
    this.onConnected = onConnected;
    this.onDisconnected = onDisconnected;
    
    _shouldReconnect = true;
    
    // Try WebSocket first, fallback to optimized polling
    // Note: Azure DevOps Server may not have WebSocket support
    // In that case, we'll use optimized polling
    final wsSupported = await _tryWebSocket(authService, storageService);
    
    if (!wsSupported) {
      // Fallback to optimized polling with adaptive intervals
      await _startOptimizedPolling(authService, storageService);
      onConnected?.call(); // Notify that polling started
    }
  }

  /// Try to establish WebSocket connection
  Future<bool> _tryWebSocket(
    AuthService authService,
    StorageService storageService,
  ) async {
    try {
      if (authService.serverUrl == null || authService.token == null) {
        return false;
      }

      final serverUrl = authService.serverUrl!;
      final token = authService.token!;
      
      // Azure DevOps Server WebSocket endpoint (if available)
      // Note: This may need to be adjusted based on your server configuration
      final wsUrl = serverUrl
          .replaceFirst('https://', 'wss://')
          .replaceFirst('http://', 'ws://')
          .replaceAll(RegExp(r'/$'), '');
      
      // Try different WebSocket endpoints
      final endpoints = [
        '$wsUrl/_apis/signalr/hubs',
        '$wsUrl/_apis/realtime',
        '$wsUrl/_apis/notifications',
      ];

      for (final endpoint in endpoints) {
        try {
          // Create WebSocket with authentication
          final uri = Uri.parse('$endpoint?token=$token');
          _channel = WebSocketChannel.connect(uri);
          
          // Set up listeners
          _channel!.stream.listen(
            _handleWebSocketMessage,
            onError: _handleWebSocketError,
            onDone: _handleWebSocketDone,
            cancelOnError: false,
          );
          
          // Send subscription message
          _channel!.sink.add(jsonEncode({
            'type': 'subscribe',
            'event': 'workitem.assigned',
            'userId': authService.username,
          }));
          
          _isConnected = true;
          _reconnectAttempts = 0;
          onConnected?.call();
          
          // Start heartbeat
          _startHeartbeat();
          
          return true;
        } catch (e) {
          print('WebSocket endpoint failed: $endpoint - $e');
          continue;
        }
      }
      
      return false;
    } catch (e) {
      print('WebSocket connection failed: $e');
      return false;
    }
  }

  /// Handle WebSocket messages
  void _handleWebSocketMessage(dynamic message) {
    try {
      final data = jsonDecode(message as String);
      
      if (data['type'] == 'workitem.assigned') {
        final workItemId = data['workItemId'] as int?;
        if (workItemId != null && !_knownWorkItemIds.contains(workItemId)) {
          _knownWorkItemIds.add(workItemId);
          onNewWorkItems?.call([workItemId]);
          _showNotification(workItemId, data['title'] as String? ?? 'New Work Item');
        }
      } else if (data['type'] == 'pong') {
        // Heartbeat response
      }
    } catch (e) {
      print('Error handling WebSocket message: $e');
    }
  }

  /// Handle WebSocket errors
  void _handleWebSocketError(dynamic error) {
    print('WebSocket error: $error');
    _isConnected = false;
    onError?.call('WebSocket error: $error');
    _scheduleReconnect();
  }

  /// Handle WebSocket close
  void _handleWebSocketDone() {
    print('WebSocket closed');
    _isConnected = false;
    onDisconnected?.call();
    _scheduleReconnect();
  }

  /// Schedule reconnection
  void _scheduleReconnect() {
    if (!_shouldReconnect || _reconnectAttempts >= maxReconnectAttempts) {
      return;
    }
    
    _reconnectAttempts++;
    final delay = Duration(seconds: 5 * _reconnectAttempts); // Exponential backoff
    
    _reconnectTimer?.cancel();
    _reconnectTimer = Timer(delay, () {
      // Reconnection will be handled by the calling code
    });
  }

  /// Start heartbeat to keep connection alive
  void _startHeartbeat() {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
      if (_isConnected && _channel != null) {
        try {
          _channel!.sink.add(jsonEncode({'type': 'ping'}));
        } catch (e) {
          print('Heartbeat failed: $e');
          _handleWebSocketError(e);
        }
      }
    });
  }

  Timer? _pollingTimer;
  Map<int, int> _workItemRevisions = {}; // Track revisions to detect changes
  
  /// Optimized polling fallback - works in background
  Future<void> _startOptimizedPolling(
    AuthService authService,
    StorageService storageService,
  ) async {
    // Initial check
    await _checkForNewWorkItems(authService, storageService);
    
    // Start polling timer - this will continue even when app is in background
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(const Duration(minutes: 2), (timer) async {
      if (!_shouldReconnect) {
        timer.cancel();
        return;
      }
      
      try {
        await _checkForNewWorkItems(authService, storageService);
      } catch (e) {
        print('Background polling error: $e');
        // Continue polling even if there's an error
      }
    });
    
    print('Background polling started (2 minute intervals)');
  }

  /// Check for new work items and changes (optimized)
  Future<bool> _checkForNewWorkItems(
    AuthService authService,
    StorageService storageService,
  ) async {
    try {
      if (authService.serverUrl == null || authService.token == null) {
        return false;
      }

      // Use optimized query: only get IDs and changed date
      final workItems = await _workItemService.getWorkItems(
        serverUrl: authService.serverUrl!,
        token: authService.token!,
        collection: storageService.getCollection(),
      );

      final newIds = <int>[];
      final changedIds = <int>[];
      
      for (var workItem in workItems) {
        final currentRev = workItem.rev ?? 0;
        final knownRev = _workItemRevisions[workItem.id];
        
        if (!_knownWorkItemIds.contains(workItem.id)) {
          // New work item
          newIds.add(workItem.id);
          _knownWorkItemIds.add(workItem.id);
          _workItemRevisions[workItem.id] = currentRev;
          
          await _notificationService.showWorkItemNotification(
            workItemId: workItem.id,
            title: workItem.title,
            body: 'Size yeni bir work item atandı: ${workItem.type}',
          );
        } else if (knownRev != null && currentRev > knownRev) {
          // Work item changed
          changedIds.add(workItem.id);
          _workItemRevisions[workItem.id] = currentRev;
          
          await _notificationService.showWorkItemNotification(
            workItemId: workItem.id,
            title: workItem.title,
            body: 'Work item güncellendi: ${workItem.state}',
          );
        } else if (knownRev == null) {
          // First time tracking this item
          _workItemRevisions[workItem.id] = currentRev;
        }
      }

      // Update known IDs (remove items that are no longer assigned)
      _knownWorkItemIds = workItems.map((item) => item.id).toSet();
      
      // Remove revisions for items no longer assigned
      _workItemRevisions.removeWhere((id, _) => !_knownWorkItemIds.contains(id));

      if (newIds.isNotEmpty || changedIds.isNotEmpty) {
        onNewWorkItems?.call([...newIds, ...changedIds]);
        return true;
      }

      return false;
    } catch (e) {
      print('Check for new work items error: $e');
      onError?.call('Error checking work items: $e');
      return false;
    }
  }

  /// Show notification for new work item
  Future<void> _showNotification(int workItemId, String title) async {
    await _notificationService.showWorkItemNotification(
      workItemId: workItemId,
      title: title,
      body: 'Size yeni bir work item atandı',
    );
  }

  /// Stop real-time monitoring
  void stop() {
    _shouldReconnect = false;
    _reconnectTimer?.cancel();
    _heartbeatTimer?.cancel();
    _pollingTimer?.cancel();
    _channel?.sink.close();
    _channel = null;
    _isConnected = false;
  }

  /// Reset known work item IDs
  void reset() {
    _knownWorkItemIds.clear();
    _workItemRevisions.clear();
  }
}

