// ignore_for_file: prefer_const_constructors, unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mobileowner/utils/text_constants.dart';
import 'package:mobileowner/utils/textfield.dart';

import '../../../../utils/color_constants.dart';
import '../../../../utils/size_config.dart';

class CompanyRegister extends StatefulWidget {
  const CompanyRegister({super.key});

  @override
  State<CompanyRegister> createState() => _CompanyRegisterState();
}

class _CompanyRegisterState extends State<CompanyRegister> {
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
                    child: Text('Enter Your Company Details',
                        style: AppStyles.text12PxSemiBold),
                  ),
                  40.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Name',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  12.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Address',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  12.verticalSpace,
                  CustomTextFormField(
                    hintText: 'Contact Number',
                    // onSaved: (input) => contact = input,
                    validator: FormBuilderValidators.compose(
                        [FormBuilderValidators.required()]),
                    obscureText: false,
                  ),
                  12.verticalSpace,
                  CustomTextFormField(
                    hintText: 'PAN number (opt)',
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
                          'Register',
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

// void launchMap() async {
//   String query = Uri.encodeComponent('biratnagar');
//   String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";

//   if (await canLaunch(googleUrl)) {
//     await launch(googleUrl);
//   }
// }
