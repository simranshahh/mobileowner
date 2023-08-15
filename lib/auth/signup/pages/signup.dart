// ignore_for_file: prefer_const_constructors, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mobileowner/utils/textfield.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/color_constants.dart';
import '../../../utils/size_config.dart';

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
                  const Center(
                    child: Text(
                      'Welcome to loyalty App',
                      textScaleFactor: 1,
                      style: TextStyle(
                          color: Colors.white,
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
                      'Register your Company ',
                      style: TextStyle(
                          color: ColorConstant.bluesub,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.12,
                  ),
                  CustomTextFormField(
                    hintText: 'Company Name',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.03,
                  ),
                  CustomTextFormField(
                    hintText: 'Email',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.03,
                  ),
                  CustomTextFormField(
                    hintText: 'Map Location',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: displayWidth(context) * 0.25,
                    ),
                    child: InkWell(
                        child: Text(
                          'Click here for map location setup guide',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onTap: () async {
                          String url = 'https://maps.google.com';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.03,
                  ),
                  CustomTextFormField(
                    hintText: 'Mobile Number',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.03,
                  ),
                  CustomTextFormField(
                    hintText: 'Password',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.03,
                  ),
                  CustomTextFormField(
                    hintText: 'Confirm Password',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.03,
                  ),
                  CheckboxListTile(
                    title: Text(
                      'Remember me',
                      style: TextStyle(
                        color: ColorConstant.bluesub,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    value: rememberMe,
                    onChanged: (bool? newValue) {
                      setState(() {
                        rememberMe = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: ColorConstant.buttoncolor,
                    checkColor: Colors.white,
                    checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  SizedBox(
                    height: displayWidth(context) * 0.03,
                  ),
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
