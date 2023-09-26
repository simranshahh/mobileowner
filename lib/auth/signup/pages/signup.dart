// ignore_for_file: prefer_const_constructors, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mobileowner/utils/text_constants.dart';
import 'package:mobileowner/utils/textfield.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/color_constants.dart';
import '../../../utils/size_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
  TextEditingController phonectrl = TextEditingController();
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.primary,
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: displayWidth(context) * 0.03,
              vertical: displayWidth(context) * 0.15,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text('Welcome to loyalty App',
                        textScaleFactor: 1, style: AppStyles.text24PxSemiBold),
                  ),
                  40.verticalSpace,
                  Center(
                    child: Text('Register your Company',
                        style: AppStyles.text12PxSemiBold),
                  ),
                  40.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Company Name',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  12.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Email',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  12.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Map Location',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: displayWidth(context) * 0.25, top: 4),
                    child: InkWell(
                        child: Text(
                          'Click here for map location setup guide',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onTap: () {
                          launchMap();
                        }
                        //  async
                        //  {
                        //   String url = 'https://maps.google.com';
                        //   if (await canLaunch(url)) {
                        //     await launch(url);
                        //   } else {
                        //     throw 'Could not launch $url';
                        //   }
                        // }
                        ),
                  ),
                  12.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Mobile Number',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  12.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Password',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  12.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Confirm Password',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  12.verticalSpace,
                  CheckboxListTile(
                    title: Text('Remember me',
                        style: AppStyles.text14PxMediumBluesub),
                    value: rememberMe,
                    onChanged: (bool? newValue) {
                      setState(() {
                        rememberMe = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  12.verticalSpace,
                  SizedBox(
                    child: Center(
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

                          Navigator.pushNamed(context, '/phoneverify');
                        },
                        child: Text(
                          'Signup',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

void launchMap() async {
  String query = Uri.encodeComponent('biratnagar');
  String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";

  if (await canLaunch(googleUrl)) {
    await launch(googleUrl);
  }
}