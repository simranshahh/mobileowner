// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mobileowner/utils/color_constants.dart';

import '../../../utils/size_config.dart';
import '../../../utils/textfield.dart';

class PhoneVerify extends StatefulWidget {
  PhoneVerify({super.key});

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primary,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: displayWidth(context) * 0.03,
            vertical: displayWidth(context) * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              Column(
                children: [
                  Text("  Phone no Verification",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  Padding(
                    padding: EdgeInsets.only(
                      left: displayWidth(context) * 0.03,
                      top: displayWidth(context) * 0.08,
                    ),
                    child: Text(
                      "Verify your phone no for secure access",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.2,
                  ),
                  CustomTextFormField(
                    hintText: 'Phone Number',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.12,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.pushNamed(context, '/receiveotp');
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
                      },
                      child: Text(
                        'Register',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
