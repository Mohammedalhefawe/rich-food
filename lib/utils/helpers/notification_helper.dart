import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/features/notifications/notification_controller.dart';

import '../../modules/customer/features/notifications/notification_controller.dart';
import '../../modules/sales_man/features/notifications/notification_list_screen.dart';
import 'cacheKeys.dart';

class FirebaseAPI {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final GetStorage storage = GetStorage();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();

    final fCMToken = await _firebaseMessaging.getToken();

    print('fCMToken: $fCMToken');

    if (fCMToken != null) {
      storage.write(CacheKeys.fCMToken, fCMToken);
    }

    _firebaseMessaging.onTokenRefresh.listen((fcmToken) {
      print('FCM Token refreshed: $fcmToken');
      storage.write(CacheKeys.fCMToken, fcmToken);
    }).onError((err) {
      print('Error getting token: $err');
    });

    await initLocalNotifications();
    initPushNotifications();
  }

  Future<void> initLocalNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings();
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    Get.to(() => NotificationListScreen(message: message));
  }

  Future<void> initPushNotifications() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    // final NotificationController controller = Get.find<NotificationController>();

    // Set up foreground message handler
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Foreground message received: ${message.notification?.title}");
      showNotification(message);
      Get.find<NotificationController>().getNotificationsNumber();
      Get.find<CustomerNotificationController>().getNotificationsNumber();
    });
  }

  Future<void> showNotification(RemoteMessage message) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'main_channel',
      'Main Notifications',
      importance: Importance.max,
      priority: Priority.high,
    );
    DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();
    NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      0, // Notification ID
      message.notification?.title ?? '',
      message.notification?.body ?? '',
      platformChannelSpecifics,
      payload: message.data['route'],
    );
  }
}
