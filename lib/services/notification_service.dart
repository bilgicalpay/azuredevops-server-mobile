/// Bildirim servisi
/// 
/// Yerel push notification'ları yönetir.
/// Work item atamaları ve güncellemeleri için bildirim gönderir.
/// 
/// @author Alpay Bilgiç

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Bildirim servisi sınıfı
/// Flutter Local Notifications kullanarak bildirim gönderir
class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _localNotifications = 
      FlutterLocalNotificationsPlugin();
  bool _initialized = false;

  Future<void> init() async {
    if (_initialized) return;

    try {
      // Initialize Android settings
      const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
      
      // Initialize iOS settings
      const iosSettings = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );

      const initSettings = InitializationSettings(
        android: androidSettings,
        iOS: iosSettings,
      );

      final initialized = await _localNotifications.initialize(
        initSettings,
        onDidReceiveNotificationResponse: _onNotificationTapped,
      );

      if (initialized == false) {
        print('Failed to initialize notifications');
        return;
      }

      // Create notification channel for Android
      const androidChannel = AndroidNotificationChannel(
        'work_items',
        'Work Items',
        description: 'Notifications for Azure DevOps work items',
        importance: Importance.high,
        enableVibration: true,
        playSound: true,
      );

      final androidPlugin = _localNotifications
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();
      
      if (androidPlugin != null) {
        await androidPlugin.createNotificationChannel(androidChannel);
        
        // Request permissions (Android 13+)
        final granted = await androidPlugin.requestNotificationsPermission();
        if (granted != null) {
          print('Notification permission granted: $granted');
        }
      }

      _initialized = true;
      print('Notification service initialized');
    } catch (e) {
      print('Error initializing notifications: $e');
    }
  }

  /// Bildirim tıklama olayını işler
  /// Şu anda sadece log kaydı tutar, gelecekte work item detay sayfasına yönlendirme eklenebilir
  void _onNotificationTapped(NotificationResponse response) {
    print('Notification tapped: ${response.payload}');
    // Not: Work item detay sayfasına yönlendirme için navigator context gereklidir
    // Bu özellik ana uygulama akışında yönetilmelidir
  }

  Future<void> showLocalNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    try {
      if (!_initialized) {
        await init();
      }

      // Ensure we have permission
      final androidPlugin = _localNotifications
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();
      
      if (androidPlugin != null) {
        final permission = await androidPlugin.requestNotificationsPermission();
        if (permission == false) {
          print('Notification permission denied');
          return;
        }
      }

      const androidDetails = AndroidNotificationDetails(
        'work_items',
        'Work Items',
        channelDescription: 'Notifications for Azure DevOps work items',
        importance: Importance.high,
        priority: Priority.high,
        showWhen: true,
        enableVibration: true,
        playSound: true,
        ongoing: false,
        autoCancel: true,
      );

      const iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      );

      const details = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      // Use timestamp as notification ID to ensure newer notifications appear on top
      // Convert to int and use modulo to fit in 32-bit range
      final notificationId = (DateTime.now().millisecondsSinceEpoch ~/ 1000) % 2147483647;
      await _localNotifications.show(
        notificationId,
        title,
        body,
        details,
        payload: payload,
      );
      
      print('✅ Notification shown: $title - $body');
    } catch (e) {
      print('Error showing notification: $e');
      // Print stack trace for debugging
      print(e.toString());
    }
  }

  Future<void> showWorkItemNotification({
    required int workItemId,
    required String title,
    required String body,
  }) async {
    await showLocalNotification(
      title: 'Work Item #$workItemId: $title',
      body: body,
      payload: workItemId.toString(),
    );
  }

  /// FCM token'ı alır
  /// Firebase yapılandırması tamamlandığında implement edilecektir
  /// Şu anda null döner çünkü Firebase entegrasyonu henüz yapılmamıştır
  Future<String?> getFCMToken() async {
    // Not: Firebase Cloud Messaging entegrasyonu için firebase_messaging paketi gerekli
    // Bu özellik gelecekte eklenebilir
    return null;
  }
}
