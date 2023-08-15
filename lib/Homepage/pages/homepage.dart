// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobileowner/Homepage/pages/redeempage.dart';
import 'package:mobileowner/Homepage/pages/rewardpage.dart';

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

    return Scaffold(
      backgroundColor: ColorConstant.primary,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: displayHeight(context) * 0.38,
            ),
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
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
              SizedBox(
                height: displayHeight(context) * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: displayHeight(context) * 0.03,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/loyaltyicon.png'),
                    SizedBox(
                      width: displayWidth(context) * 0.03,
                    ),
                    Text('Loyalty App',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
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
              SizedBox(
                height: displayHeight(context) * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: displayWidth(context) * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ankit Cafe',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w500)),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: ColorConstant.paleblue,
                        ),
                        Text('Sinamangal',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: displayHeight(context) * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: displayWidth(context) * 0.05),
                child: Container(
                  height: displayHeight(context) * 0.078,
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
                            color: ColorConstant.primary,
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
                                    width: displayWidth(context) * 0.035,
                                  ),
                                  Text(
                                    'Reward \n  points',
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
                height: 20,
              ),
              SizedBox(
                height: displayHeight(context) *
                    0.38, // Specify a height for the TabBarView
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
    );
  }
}
