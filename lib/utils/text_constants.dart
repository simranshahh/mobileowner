import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobileowner/utils/color_constants.dart';

class AppStyles {
  const AppStyles._();

  static TextStyle get text8PxRegular => TextStyle(
      fontSize: 8.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

  //regular
  static TextStyle get text32PxRegular => TextStyle(
      fontSize: 32.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

  static TextStyle get text24PxRegular => TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

  static TextStyle get text20PxRegular => TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

  static TextStyle get text18PxRegular => TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

  static TextStyle get text16PxRegular => TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

  static TextStyle get text14PxRegular => TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

  static TextStyle get text12PxRegular => TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

  static TextStyle get text10PxRegular => TextStyle(
      fontSize: 10.sp, fontWeight: FontWeight.w400, fontFamily: "Montserrat");

//medium

  static TextStyle get text32PxMedium => TextStyle(
      fontSize: 32.sp, fontWeight: FontWeight.w500, fontFamily: "Montserrat");

  static TextStyle get text24PxMedium => TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w500, fontFamily: "Montserrat");

  static TextStyle get text20PxMedium => TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w500, fontFamily: "Montserrat");

  static TextStyle get text18PxMedium => TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w500, fontFamily: "Montserrat");

  static TextStyle get text16PxMedium => TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w500, fontFamily: "Montserrat");
  static TextStyle get text14PxMediumBluesub => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      fontFamily: "Montserrat",
      color: ColorConstant.bluesub);
  static TextStyle get text14PxMediumWhite => TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      fontFamily: "Montserrat",
      color: Colors.white);

  static TextStyle get text12PxMedium => TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.w500, fontFamily: "Montserrat");

  static TextStyle get text10PxMedium => TextStyle(
      fontSize: 10.sp, fontWeight: FontWeight.w500, fontFamily: "Montserrat");

//semi bold

  static TextStyle get text32PxSemiBold => TextStyle(
      fontSize: 32.sp, fontWeight: FontWeight.w600, fontFamily: "Montserrat");

  static TextStyle get text24PxSemiBold => TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: Colors.white);

  static TextStyle get text20PxSemiBold => TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w600, fontFamily: "Montserrat");

  static TextStyle get text18PxSemiBold => TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w600, fontFamily: "Montserrat");

  static TextStyle get text16PxSemiBold => TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: "Montserrat");

  static TextStyle get text14PxSemiBold => TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w600, fontFamily: "Montserrat");

  static TextStyle get text12PxSemiBold => TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: ColorConstant.bluesub);

  static TextStyle get text10PxSemiBold => TextStyle(
      fontSize: 10.sp, fontWeight: FontWeight.w600, fontFamily: "Montserrat");
}

double calculateSpacing(double em) {
  return 16 * em;
}
