// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../presentation/wrapper/wrapper.dart';

var sezu = '';
var messagess = '';
var navigateId;
// ignore: slash_for_doc_comments
/**
 * Documents added by Alaa, enjoy ^-^:
 * There are 3 major things to consider when dealing with push notification :
 * - Creating the notification
 * - Hanldle notification click
 * - App status (foreground/background and killed(Terminated))
 * 
 * Creating the notification:
 * 
 * - When the app is killed or in background state, creating the notification is handled through the back-end services.
 *   When the app is in the foreground, we have full control of the notification. so in this case we build the notification from scratch.
 * 
 * Handle notification click:
 * 
 * - When the app is killed, there is a function called getInitialMessage which
 *   returns the remoteMessage in case we receive a notification otherwise returns null.
 *   It can be called at any point of the application (Preferred to be after defining GetMaterialApp so that we can go to any screen without getting any errors) 
 * - When the app is in the background, there is a function called onMessageOpenedApp which is called when user clicks on the notification.
 *   It returns the remoteMessage.
 * - When the app is in the foreground, there is a function flutterLocalNotificationsPlugin, is passes a future function called onSelectNotification which 
 *   is called when user clicks on the notification.
 *  
 * */

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
var a = '';

@override
class PushNotificationService {
  // It is assumed that all messages contain a data field with the key 'type'
  Future<void> setupInteractedMessage() async {
    await Firebase.initializeApp();

// Get any messages which caused the application to open from a terminated state.
    // If you want to handle a notification click when the app is terminated, you can use `getInitialMessage`
    // to get the initial message, and depending in the remoteMessage, you can decide to handle the click
    // This function can be called from anywhere in your app, there is an example in main file.
    // RemoteMessage initialMessage =
    //     await FirebaseMessaging.instance.getInitialMessage();
    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    // if (initialMessage != null && initialMessage.data['type'] == 'chat') {
    // Navigator.pushNamed(context, '/chat',
    //     arguments: ChatArguments(initialMessage));
    // }
// Also handle any interaction when the app is in the background via a
    // Stream listener

    await enableIOSNotifications();
    await registerNotificationListeners();
  }

  registerNotificationListeners() async {
    log('data1');
    AndroidNotificationChannel channel = androidNotificationChannel();

    log('hflkhfklflfhfl$messagess');
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    var androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOSSettings = IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
    );

    var initSetttings =
        InitializationSettings(android: androidSettings, iOS: iOSSettings);
    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: (message) async {
      log('djhklhklgklglgklgngkl');
      if (messagess == 'clip') {
        sezu = '1';
        log('123456$sezu');
      } else {
        sezu = '2';
      }
      // log('raka1${message.messageType.toString()}');
      // This function handles the click in the notifica
      //swtion when the app is in foreground
      // Get.toNamed(NOTIFICATIOINS_ROUTE);
    });
// onMessage is called when the app is in foreground and a notification is received
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      log('data9');
      // Get.find<HomeController>().getNotificationsNumber();
      print(message);

      RemoteNotification? notification = message!.notification;
      AndroidNotification? android = message.notification?.android;
// If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        log('dhdjkdh12${message.data.toString()}');
        log('12${message.ttl.toString()}');
        log('13${notification.title.toString()}');
        log('14${notification.body.toString()}');
        log('15${message.senderId}');
        log('16${message.messageType}');
        log('17${message.data}');

        log('18${message.data['type']}');

        var a = message.data['type'];
        var b = message.data['id'];
        prefHelper.saveString('idforgetData', message.data['id']);
        messagess = a;
        navigateId = b;
        log('19${messagess.toString()}');
        log('36${b.toString()}');
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              icon: android.smallIcon,
              playSound: true,
            ),
          ),
        );
      }
    });
  }

  enableIOSNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }

  androidNotificationChannel() => AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      importance: Importance.max,
      enableLights: true);
}
