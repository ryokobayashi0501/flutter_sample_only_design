import 'package:flutter/material.dart';
import 'package:flutter_simple_user_auth/forget_password.dart';
import 'package:flutter_simple_user_auth/home.dart';
import 'package:flutter_simple_user_auth/login.dart';
import 'package:flutter_simple_user_auth/signup.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home': (context) => Home(),
        '/forgot_password': (context) => forget_password(),
      },
    );
  }
}

