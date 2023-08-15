// ignore_for_file: prefer_const_constructors

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobileowner/auth/signup/pages/signup.dart';

import '../utils/color_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return EasySplashScreen(
      backgroundColor: ColorConstant.primary,
      durationInSeconds: 2,
      logo: Image.asset('assets/splash.png',
          height: height, width: width, fit: BoxFit.fill),
      title: const Text(
        'Loyalty App',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 32),
      ),
      navigator: SignupPage(),
      showLoader: true,
      loaderColor: Colors.white,
    );
  }
}
