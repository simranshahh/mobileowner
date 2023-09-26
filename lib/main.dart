// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileowner/Profile/Pages/settings/employeelist.dart';

import 'package:mobileowner/utils/app_theme.dart';

import 'auth/signup/pages/Phonenoverification/otpinputpage.dart';
import 'auth/signup/pages/Phonenoverification/verifyphone.dart';
import 'auth/signup/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: MyRoutes.generatedRoutes,
      //   initialRoute: '/loginpage',
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: false,
      // ),
      theme: AppTheme.lightTheme,

      home: OtpInputPage(),
    );
  }
}
