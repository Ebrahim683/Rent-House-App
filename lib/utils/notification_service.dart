import 'dart:convert';
import 'dart:math';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rent_house/utils/strings.dart';

import '../data/model/profile/profile_model_list.dart';
import '../data/network/repository/profile_repository.dart';

class NotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static notificationInit() async {
    await AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: channelKey,
          channelName: channelName,
          channelDescription: channelDescription,
          importance: NotificationImportance.Max,
          playSound: true,
          onlyAlertOnce: true,
          criticalAlerts: true,
          enableVibration: true,
          enableLights: true,
          channelShowBadge: true,
        )
      ],
    );
  }

  static Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  static requestPermission() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      } else {
        print('permission granted');
      }
    });
  }

  static firebaseInit() {
    FirebaseMessaging.onMessage.listen((message) {
      print(message.notification!.title);
      print(message.notification!.body);
      showNotification(message);
    });
  }

  static showNotification(RemoteMessage message) {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: Random.secure().nextInt(100000),
        channelKey: channelKey,
        title: message.notification!.title.toString(),
        body: message.notification!.body.toString(),
        criticalAlert: true,
        displayOnBackground: true,
        displayOnForeground: true,
      ),
    );
  }

  static sentNotification({
    required String deviceToken,
    required String title,
    required String body,
  }) async {
    String notificationUrl = 'https://fcm.googleapis.com/fcm/send';
    Dio dio = Dio();

    var data = {
      'to': deviceToken,
      'priority': 'high',
      'notification': {
        'title': title,
        'body': body,
      },
    };

    await dio.post(
      notificationUrl,
      data: jsonEncode(data),
      options: Options(
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'key=$headersKey',
        },
      ),
    );
  }

  static Future<String> getPersonDeviceToken({required String number}) async {
    String deviceToken = '';
    await ProfileRepository.getProfile(phoneNumber: number).then((value) {
      ProfileModelList profileModelList = ProfileModelList.fromJson(value);
      ProfileModel profileModel = profileModelList.profileModel![0];
      deviceToken = profileModel.deviceToken.toString();
    });
    return deviceToken;
  }
}
