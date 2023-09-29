// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobileowner/Homepage/pages/rewardpage/mutation/rewardpage.dart';
import 'package:mobileowner/Homepage/pages/rewardpage/rewardpagecard.dart';
import 'package:mobileowner/utils/size_config.dart';

import '../../graphql/garphql_provider.dart';
import '../../utils/color_constants.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({Key? key}) : super(key: key);

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  String _selectedOption = 'Option 1';
  int _page = 0;
  bool _hasNextPage = true;
  bool _isFirstLoadRunning = false;
  bool _isLoadMoreRunning = false;
  List _posts = [];
  List _foundmerchant = [];
  late Timer _debounce = Timer(Duration.zero, () {});
  late ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Alphabetic',
                  style: Theme.of(context).textTheme.headlineLarge),
              IconButton(
                // key: _filterButtonKey,
                onPressed: () {},
                icon: const Icon(Icons.filter_list),
              ),
            ],
          ),
          24.verticalSpace,
          TextField(
            onChanged: (searchTerm) {
              // _performSearch(searchTerm);
            },
            cursorColor: ColorConstant.primary,
            decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: ColorConstant.primary),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: ColorConstant.primary),
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.black),
              filled: false,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: ColorConstant.primary),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: ColorConstant.primary),
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: Icon(
                Icons.search,
                color: ColorConstant.primary,
              ),
            ),
          ),
          12.verticalSpace,
          SizedBox(
            height: 60.h,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 3,
                  shadowColor: Colors.black,
                  clipBehavior: Clip.antiAlias,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/cafe1.png'),
                        SizedBox(
                          width: 8.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(' hi',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        color: ColorConstant.buttoncolor)),
                            Text('Date:2056/08/09',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: ColorConstant.greytext))
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Awarded Points',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: ColorConstant.greytext)),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/coin.png',
                                  alignment: Alignment.center,
                                ),
                                // SizedBox(
                                //   width: width * 0.01,
                                // ),
                                Text('hi',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: ColorConstant.primary))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCardList() {
    return Expanded(
      child: SizedBox(
        height: displayHeight(context) * 0.05,
        child: RefreshIndicator(
          onRefresh: _getData,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListView.builder(
              controller: _controller,
              itemCount: _foundmerchant.length,
              itemBuilder: (context, index) {
                return RewardPageCard(
                  merchantData: _foundmerchant[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _firstLoad() async {
    setState(() {
      _isFirstLoadRunning = true;
    });
    try {
      QueryResult result = await clientt.query(
        QueryOptions(
            document: redeempointquery,
            variables: const {
              "pageNumber": 0,
            },
            fetchPolicy: FetchPolicy.cacheAndNetwork),
      );
      _posts = result.data?['FindOwnerRewardLogs'];
      setState(() {
        _foundmerchant = _posts;
      });
    } catch (err) {
      if (kDebugMode) {
        print('Something went wrong from first load');
      }
    }
    setState(() {
      _isFirstLoadRunning = false;
    });
  }

  Future<void> _getData() async {
    setState(() {
      _firstLoad();
    });
  }
}
//   Future<void> _getData() async {
//     setState(() {
//       _firstLoad();
//     });
//   }
// }


  //   void _showPopupMenu() async {
  //   FocusScope.of(context).unfocus();
  //   final RenderBox overlay =
  //       _filterButtonKey.currentContext!.findRenderObject() as RenderBox;

  //   final position = RelativeRect.fromRect(
  //     Rect.fromPoints(
  //       overlay.localToGlobal(Offset(0, overlay.size.height + 150),
  //           ancestor: context.findRenderObject()!),
  //       overlay.localToGlobal(
  //           Offset(overlay.size.width, overlay.size.height + 200),
  //           ancestor: context.findRenderObject()!),
  //     ),
  //     Offset.zero & MediaQuery.of(context).size,
  //   );
  //   String? selectedOption = await showMenu(
  //     context: context,
  //     position:
  //         position, // Adjust the position according to your icon's position

  //     color: Colors.white,
  //     items: [
  //       const PopupMenuItem<String>(
  //         value: 'Recent',
  //         child: Text('Recent'),
  //       ),
  //       const PopupMenuItem<String>(
  //         value: 'Alphabetical',
  //         child: Text('Alphabetical'),
  //       ),
  //     ],
  //     initialValue: _selectedOption, // The initial selected value
  //   );

  //   if (selectedOption != null && selectedOption != _selectedOption) {
  //     setState(() {
  //       _selectedOption = selectedOption;
  //       _fetchData();
  //     });
  //   }
  // }
