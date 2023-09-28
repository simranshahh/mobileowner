// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mobileowner/utils/color_constants.dart';

import '../../../utils/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primary,
        body: Column(
          children: [
            Center(
              child: Text('Welcome to loyalty App',
                  textScaleFactor: 1,
                  style: Theme.of(context).textTheme.displayMedium),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Login to continue ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextFormField(
              hintText: 'Phone Number',
              // onSaved: (input) => contact = input,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.numeric(),
                FormBuilderValidators.required()
              ]),
              obscureText: false,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextFormField(
              hintText: 'Password',
              // onSaved: (input) => password = input,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(4,
                    errorText: "Password should be minimum 4 characters"),
              ]),
              obscureText: true,
            ),
            // CheckboxListTile(
            //   title: Text(
            //     'Remember me',
            //     style: TextStyle(
            //       color: ColorConstant.bluesub,
            //       fontFamily: 'Montserrat',
            //       fontWeight: FontWeight.w500,
            //       fontSize: 14,
            //     ),
            //   ),
            //   // value: rememberMe,
            //   onChanged: (bool? newValue) {
            //     setState(() {
            //       rememberMe = newValue!;
            //     });
            //   },
            //   controlAffinity: ListTileControlAffinity.leading,
            //   activeColor: ColorConstant.checkbox,
            //   checkColor: Colors.black,
            //   checkboxShape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(4),
            //   ),
            //   dense: true,
            //   contentPadding: EdgeInsets.zero,
            // ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () async {
                // String? deviceToken = await getDeviceToken();
                // if (_formKey.currentState!.validate()) {
                //   _formKey.currentState!.save();
                //   runMutation(LoginInput(
                //     contact: contact!,
                //     password: password!,
                //     loginType: "EMPLOYEE",
                //     // deviceToken: deviceToken!
                //   ).toJson());
                // }
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                  backgroundColor:
                      MaterialStatePropertyAll(ColorConstant.buttoncolor)),
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 16,
                    color: ColorConstant.bluesub,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
