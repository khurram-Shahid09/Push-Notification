import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:messaging_noti/message.dart';
import 'package:messaging_noti/pushnoti.dart';
import 'package:messaging_noti/serverkey.dart';
import 'package:http/http.dart' as http;

final GlobalKey<NavigatorState> nevegatorkey = GlobalKey();
Future bg_notification(RemoteMessage message) async {
  if (message.notification != null) {
    print('Message received in Bg');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  String? token = await FirebaseMessaging.instance.getToken();
  print('FCM Token: $token');
  FirebaseMessaging.onBackgroundMessage(bg_notification);
  pushnotification.init();
  pushnotification.localNotiInit();
  final message = await FirebaseMessaging.instance.getInitialMessage();
  if (message != null) {
    Future.delayed(Duration(seconds: 1), () {
      nevegatorkey.currentState!.pushNamed("/message", arguments: message);
    });
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: nevegatorkey,
      routes: {
        "/": (context) => HomePage(),
        "/message": (context) => Message()
      },
      title: 'Flutter FCM',
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Configure Firebase Messaging
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("onMessage: $message");
      String payloadData = jsonEncode(message.data);
      if (message.notification != null) {
        pushnotification.showSimpleNotification(
            title: message.notification!.title!,
            body: message.notification!.body!,
            payload: payloadData);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("onMessageOpenedApp: $message");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FCM Example'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  final get = get_server_key();
                  String token = await get.server_token();
                  await http.post(
                    Uri.parse(
                        'https://fcm.googleapis.com/v1/projects/chatappyt-46aa1/messages:send'),
                    headers: <String, String>{
                      'Content-Type': 'application/json',
                      'Authorization': 'Bearer $token',
                    },
                    body: jsonEncode(<String, dynamic>{
                      "message": {
                        "token":
                            'd4YUUGRHRHON5G5xFBwX1W:APA91bGVGSrtvztLU-ErD4wgy6dbuOHWy2bjP94Hik8GRtuqKC_iFmlUwH55TzJVBCE1dH7hJJH9jg3Pdu4X2hYM2TmCgRAF-VoR8nchhr3U52d_ui59WNY',
                        "notification": {
                          "body": 'This is the push notification',
                          "title": 'Push Notification',
                        },
                        "data": {"story_id": "story_12345"}
                      }
                    }),
                  );
                  print('toen');
                },
                child: Text('Fetch server key')),
          ),
          const Center(
            child: Text('Firebase Cloud Messaging Example'),
          ),
        ],
      ),
    );
  }
}
