import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pushy_flutter/pushy_flutter.dart';
import 'notification_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _deviceToken = 'Loading...';
  String _instruction = '(please wait)';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method
  Future<void> initPlatformState() async {
    // Start the Pushy service
    Pushy.listen();
    // Set custom notification icon (Android)
    Pushy.setNotificationIcon('ic_notify');

    try {
      // Enable FCM fallback delivery
      Pushy.toggleFCM(true);
      // Register the device for push notifications
      String deviceToken = await Pushy.register();
      // Print token to console/logcat
      print('Device token: $deviceToken');
      // Send the token to your backend server
      // ...
      // Update UI with token
      setState(() {
        _deviceToken = deviceToken;
        _instruction =
            Platform.isAndroid ? '(copy from logcat)' : '(copy from console)';
      });
    } on PlatformException catch (error) {
      // Print to console/logcat
      print('Error: ${error.message}');
      // Show error
      setState(() {
        _deviceToken = 'Registration failed';
        _instruction = '(restart app to try again)';
      });
    }

    // Enable in-app notification banners (iOS 10+)
    Pushy.toggleInAppBanner(false);

    // Listen for push notifications received
    Pushy.setNotificationListener(backgroundNotificationListener);

    // Listen for push notification clicked
    Pushy.setNotificationClickListener((Map<String, dynamic> data) {
      var notiData = NotificationModel.fromJson(data);
      Navigator.pushNamed(
        context,
        notiData.routingUrl!,
        arguments: notiData,
      );
      Pushy.clearBadge();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Demo app UI
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pushy'),
      ),
      body: Builder(
        builder: (context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/maersk_solid.png', width: 90),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  _deviceToken,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              Text(_instruction,
                  style: TextStyle(fontSize: 13, color: Colors.grey[600])),
            ],
          ),
        ),
      ),
    );
  }

  void backgroundNotificationListener(Map<String, dynamic> data) {
    String notificationTitle = 'MyApp';
    String notificationText = data['message'] ?? 'Hello World!';
    Pushy.notify(notificationTitle, notificationText, data);
    Pushy.clearBadge();
  }
}
