// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

import 'dart:async';

import '../../../../utils/color_constants.dart';
import '../../../../utils/size_config.dart';

class OtpInputPage extends StatefulWidget {
  var contactFromInput;
  OtpInputPage({
    this.contactFromInput,
    super.key,
  });

  @override
  State<OtpInputPage> createState() => _OtpInputPageState();
}

class _OtpInputPageState extends State<OtpInputPage> {
  int secondsRemaining = 30;
  bool enableResend = false;
  Timer? timer;
  int completedInputs = 0;
  bool canMoveToNext = true;
  int maxIterations = 2;
  // OtpFieldController otpcontroller = OtpFieldController();
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  // String _otp = "";
  @override
  initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.primary,
        body: Padding(
          padding: EdgeInsets.only(left: 20.42, top: 12.41, right: 20.42),
          child:
              // Mutation(
              //   options: MutationOptions(
              //     document: verifyreactivationmutation,
              //     onCompleted: (data) {
              //       if (data != null) {
              //         ScaffoldMessenger.of(context).showSnackBar(
              //           SnackBar(
              //             backgroundColor: ColorConstant.primary,
              //             behavior: SnackBarBehavior.floating,
              //             content: Text(
              //               data['verifyReactivation'],
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontFamily: 'Montserrat',
              //                 fontWeight: FontWeight.w600,
              //                 fontSize: 12,
              //               ),
              //             ),
              //           ),
              //         );
              //         Navigator.pushReplacementNamed(context, '/login');
              //       }
              //     },
              //     onError: (error) {},
              //   ),
              //   builder: (runMutation, result) {
              Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12.42),
              Center(
                child: Text(
                  'Phone no Verification',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorConstant.bluesub,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
              ),
              SizedBox(
                height: displayWidth(context) * 0.1,
              ),
              Center(
                child: Text(
                  'We’ve sent a OTP verification code to your phone no.',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorConstant.bluesub,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ),
              Center(
                child: Text(
                  'Enter OTP code to continue',
                  textScaleFactor: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorConstant.bluesub,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Text(
                  ' $secondsRemaining ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(
                    _fieldOne,
                    true,
                  ), // auto focus
                  OtpInput(_fieldTwo, false),
                  OtpInput(_fieldThree, false),
                  OtpInput(_fieldFour, false)
                ],
              ),
              // OTPTextField(
              //   controller: otpcontroller,
              //   outlineBorderRadius: 20,
              //   otpFieldStyle: OtpFieldStyle(
              //       enabledBorderColor: Colors.white,
              //       focusBorderColor: ColorConstant.primarydark),
              //   length: 4,
              //   width: MediaQuery.of(context).size.width,
              //   fieldWidth: 50,
              //   style: TextStyle(fontSize: 17, color: Colors.white),
              //   textFieldAlignment: MainAxisAlignment.spaceAround,
              //   fieldStyle: FieldStyle.box,
              //   onCompleted: (pin) {
              //     print("Completed: " + pin);
              //   },
              // ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // getDeviceToken();
                    // String? deviceToken =
                    //     await getDeviceToken();

                    // if (_formKey.currentState!.validate()) {
                    //   _formKey.currentState!.save();
                    //   runMutation(LoginInput(
                    //           contact: contact,
                    //           password: password,
                    //           loginType: "CUSTOMER",
                    //           devicetoken: deviceToken!)
                    //       .toJson());
                    // }

                    //Navigator.pushNamed(context, '/phoneverify');
                  },
                  child: Text(
                    'Continue',
                  ),
                ),
              ),
              SizedBox(
                height: displayWidth(context) * 0.06,
              ),
              Row(
                children: [
                  Center(
                    child: Text(
                      "              Didn't Received Code?",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: ColorConstant.paleblue,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text(
                    "Resend OTP",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: ColorConstant.paleblue,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
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
      height: 50,
      width: 50,
      child: TextField(
        style: TextStyle(color: ColorConstant.bluesub),
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.primary),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            border: const OutlineInputBorder(),
            counterText: '',
            hintStyle: const TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
// Decrease the number of iterations
          }
        },
      ),
    );
  }
}
