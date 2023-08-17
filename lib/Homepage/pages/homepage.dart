// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobileowner/Homepage/pages/redeempage.dart';
import 'package:mobileowner/Homepage/pages/rewardpage.dart';
import 'package:mobileowner/utils/text_constants.dart';

import '../../../utils/size_config.dart';
import '../../utils/color_constants.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  late TabController tabController;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.primary,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 253.h,
              ),
              child: Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/loyaltyicon.png'),
                      SizedBox(width: 4),
                      Text('Loyalty App',
                          textAlign: TextAlign.center,
                          style: AppStyles.text14PxMediumWhite),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                      ),
                      SizedBox(
                        width: displayWidth(context) * 0.03,
                      ),
                      InkWell(
                        child: Container(
                          width: displayWidth(context) * 0.12,
                          height: displayHeight(context) * 0.08,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE0EAF5),
                          ),
                          child: const Icon(
                            Icons.notification_important,
                            color: Color(0xff5889c7),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/notificationpage');
                        },
                      ),
                    ],
                  ),
                ),
                24.verticalSpace,
                Padding(
                  padding: EdgeInsets.only(left: displayWidth(context) * 0.08),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ankit Cafe', style: AppStyles.text24PxSemiBold),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: ColorConstant.paleblue,
                          ),
                          Text('Sinamangal', style: AppStyles.text12PxSemiBold),
                        ],
                      ),
                    ],
                  ),
                ),
                42.5.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    height: 52,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(2),
                          child: TabBar(
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.white,
                            indicatorColor: ColorConstant.primary,
                            indicatorWeight: 2,
                            indicator: BoxDecoration(
                              color: ColorConstant.buttoncolor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            controller: tabController,
                            tabs: [
                              Tab(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage:
                                          AssetImage('assets/coin_tabbar.png'),
                                      backgroundColor: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 13.18.w,
                                    ),
                                    Text(
                                      'Awarded \n  points',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('assets/redeem.png'),
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(
                                    width: displayWidth(context) * 0.035,
                                  ),
                                  Text(
                                    'Redeemed \n  points',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 42.h,
                ),
                SizedBox(
                  height: 271, // Specify a height for the TabBarView
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      RewardPage(),
                      ReedemPage(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
