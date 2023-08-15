// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileowner/auth/signup/pages/signup.dart';

import '../auth/phoneverify/pages/phoneverify.dart';
import '../auth/phoneverify/pages/receiveotp.dart';

class MyRoutes {
  static Route<dynamic>? generatedRoutes(RouteSettings settings) {
    // implement business logic here
    switch (settings.name) {
      case '/signup':
        return MaterialPageRoute(builder: (context) => SignupPage());
      case '/phoneverify':
        return MaterialPageRoute(builder: (context) => PhoneVerify());
      case '/receiveotp':
        return MaterialPageRoute(builder: (context) => ReceiveOTP());
      default:
        return null;
    }
  }
}
