// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobileowner/utils/size_config.dart';

import '../../utils/color_constants.dart';

class EmployeeTransfer extends StatelessWidget {
  const EmployeeTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.primary,
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, height / 4.3, 0, 0),
                  child: Container(
                    height: height,
                    width: width,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 249, 249),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 16),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/loyaltyicon.png'),
                             Text(
                              'Loyalty App',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: width / 3.4,
                            ),
                             CircleAvatar(
                              backgroundImage: AssetImage('assets/profile.png'),
                            ),
                             SizedBox(
                              width: 7,
                            ),
                            InkWell(
                              onTap: () {
                                // handle button press
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE0EAF5),
                                ),
                                child: const Icon(
                                  Icons.notification_important,
                                  color: Color(0xff5889c7),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Image.asset(
                          'assets/banner.png',
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                'Notifications',
                                style: TextStyle(
                                  color: Color(0xFF0B131D),
                                  fontSize: 18,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: displayHeight(context) * 0.5,
                          child:
                              ListView.builder(itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: SizedBox(
                                height: height * 0.12,
                                width: width * 0.9,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 3,
                                  shadowColor: Colors.black38,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(10.0, 14, 0, 0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                            // backgroundImage: ImageProvider<>,
                                            ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'New Reward Unlocked!',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14),
                                            ),
                                            SizedBox(
                                              height: height * 0.01,
                                            ),
                                            Expanded(
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'You can now redeem your points for a free \ncoffee at any participating vendor. Enjoy',
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontFamily: 'Montserrat',
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    '12 min ago',
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
