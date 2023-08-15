// ignore_for_file: prefer_const_constructors, empty_statements, prefer_const_constructors_in_immutables, unused_element

import 'package:flutter/material.dart';

import '../../../utils/color_constants.dart';

class ReceiveOTP extends StatefulWidget {
  const ReceiveOTP({super.key});

  @override
  State<ReceiveOTP> createState() => _ReceiveOTPState();
}

final TextEditingController _fieldOne = TextEditingController();
final TextEditingController _fieldTwo = TextEditingController();
final TextEditingController _fieldThree = TextEditingController();
final TextEditingController _fieldFour = TextEditingController();
String _otp = "";

@override
class _ReceiveOTPState extends State<ReceiveOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Phone no Verification'),
          OtpInput(_fieldTwo, false),
          OtpInput(_fieldOne, false),
          OtpInput(_fieldThree, false),
          OtpInput(_fieldFour, false),
        ],
      ),
    );
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;

  OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstant.primary)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            border: const OutlineInputBorder(),
            counterText: '',
            hintStyle: const TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
            ; // Decrease the number of iterations
          }
        },
      ),
    );
  }
}
