// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileowner/utils/color_constants.dart';

import '../../../../utils/size_config.dart';

class OTPReceive extends StatefulWidget {
  const OTPReceive({super.key});

  @override
  State<OTPReceive> createState() => _OTPReceiveState();
}

class _OTPReceiveState extends State<OTPReceive> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primary,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: ColorConstant.paleblue,
                )),
            Center(
              child: Text(
                'Phone No Verification',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: ColorConstant.paleblue, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: displayWidth(context) * 0.08,
            ),
            Center(
              child: Text(
                "We've sent a OTP verification code to your phone no.",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorConstant.paleblue, fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                "Enter OTP code to continue",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: ColorConstant.paleblue, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
