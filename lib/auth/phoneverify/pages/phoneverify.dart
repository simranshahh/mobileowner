// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mobileowner/utils/color_constants.dart';
import 'package:mobileowner/utils/text_constants.dart';

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
            horizontal: 20.w,
            vertical: 12.h,
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
                      style: AppStyles.text24PxSemiBold),
                  40.verticalSpace,
                  Text(
                    "Verify your phone no for secure access",
                    style: AppStyles.text12PxSemiBold,
                  ),
                  40.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Phone Number',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  32.verticalSpace,
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/homepage');
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
