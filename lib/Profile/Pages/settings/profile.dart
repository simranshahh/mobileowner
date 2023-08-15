// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_const_constructors_in_immutables, use_build_context_synchronously, unused_element, dead_code, unnecessary_null_comparison

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mobileowner/Profile/Pages/settings/profile_menu.dart';
import 'package:mobileowner/utils/color_constants.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.primary,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: ColorConstant.bg,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Column(
              children: [
                //ProfilePic(),

                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ProfileMenu(
                            text: "Settings",
                            icon: Icons.settings,
                            press: () => {
                              //Navigator.pushNamed(context, '/settings')
                            },
                          ),
                          ProfileMenu(
                            text: "Change Password",
                            icon: Icons.lock,
                            press: () {
                              //Navigator.pushNamed(context, '/changepass');
                            },
                          ),
                          ProfileMenu(
                            text: "Employee List",
                            icon: Icons.message,
                            press: () {
                              // Navigator.pushNamed(context, '/faq');
                            },
                          ),
                          ProfileMenu(
                            text: "Branches ",
                            icon: Icons.policy,
                            press: () {
                              //  Navigator.pushNamed(context, '/privacy');
                            },
                          ),
                          ProfileMenu(
                            text: "Privacy Policy",
                            icon: Icons.message,
                            press: () {
                              //  Navigator.pushNamed(context, '/faq');
                            },
                          ),
                          ProfileMenu(
                            text: "Terms and Condition ",
                            icon: Icons.policy,
                            press: () {
                              // Navigator.pushNamed(context, '/privacy');
                            },
                          ),
                          // ProfileMenu(
                          //   text: "Terms and Condition",
                          //   icon: LineAwesomeIcons
                          //       .file_contract,
                          //   press: () {
                          //     Navigator.pushNamed(
                          //         context, '/faq');
                          //   },
                          // ),
                          const Divider(
                            height: 40,
                            thickness: 1,
                          ),
                          ProfileMenu(
                            text: "Logout ",
                            icon: Icons.policy,
                            press: () {
                              //  Navigator.pushNamed(context, '/logout');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
