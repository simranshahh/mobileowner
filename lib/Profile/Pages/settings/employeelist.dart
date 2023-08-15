// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_const_constructors_in_immutables, use_build_context_synchronously, unused_element, dead_code, unnecessary_null_comparison

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mobileowner/utils/color_constants.dart';
import 'package:mobileowner/utils/size_config.dart';

class EmployeeList extends StatefulWidget {
  EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
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
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                Text(
                  'Employee List',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: displayWidth(context) * 0.3,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                    ))
              ],
            ),
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
                          TextField(
                            onChanged: (searchTerm) {
                              // _performSearch(searchTerm);
                            },
                            cursorColor: ColorConstant.primary,
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: ColorConstant.paleblue),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: ColorConstant.paleblue),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              hintText: "Search",
                              filled: false,
                              fillColor: const Color(0xfff1f1f1),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: ColorConstant.paleblue),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Card(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/profile.png'),
                                ),
                                Column(
                                  children: [
                                    Text('Anina Maharjan'),
                                    Text('Putalisadak Branch'),
                                  ],
                                ),
                                Text('Transfer'),
                              ],
                            ),
                          )
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
