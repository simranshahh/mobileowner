// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobileowner/Profile/Pages/settings/employeelist.dart';
import 'package:mobileowner/auth/signup/pages/signup.dart';

import 'package:mobileowner/utils/app_theme.dart';

import 'routes/myrouters.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.lightTheme,
          onGenerateRoute: MyRoutes.generatedRoutes,
          initialRoute: '/signup',
          home: SignupPage(),
        );
      },
    );
  }
}
