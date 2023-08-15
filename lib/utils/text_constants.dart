import 'package:flutter/material.dart';

TextStyle gettitleSize(BuildContext context) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(
    fontSize: mediaQueryData * 0.037,
    fontWeight: FontWeight.w600,
  );
}

TextStyle getsubtitleSize(BuildContext context) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * 0.025, fontFamily: "Montserrat");
}

TextStyle getnormalSize(BuildContext context) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * 0.018, fontFamily: "Montserrat");
}

TextStyle getsplashSize(BuildContext context) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * 0.05, fontFamily: "Montserrat");
}

TextStyle getSimple(BuildContext context, double size) {
  double mediaQueryData = MediaQuery.of(context).size.height;
  return TextStyle(fontSize: mediaQueryData * size, fontFamily: "Montserrat");
}
