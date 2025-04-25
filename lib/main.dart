import 'package:flutter/material.dart';
import 'package:flutter_simple_user_auth/forget_password.dart';
import 'package:flutter_simple_user_auth/home.dart';
import 'package:flutter_simple_user_auth/login.dart';
import 'package:flutter_simple_user_auth/signup.dart';
import 'package:device_preview/device_preview.dart';



void main() {
  runApp(
    DevicePreview(
      enabled: true, 
      builder: (context) => MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, 
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home': (context) => Home(),
        '/forgot_password': (context) => ForgotPassword(),
      },
    );
  }
}


