import 'package:flutter/material.dart';
import 'package:tasks/account/login_screen.dart';

import 'account/register.dart';
import 'intro/onBoarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: OnBoardingScreen(),
      routes: {
        'login': (context) {
          return LoginScreen();
        },
        'signup': (context) {
          return RegisterScreen();
        },
      },
    );
  }
}
