// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, unused_local_variable

import 'package:flutter/material.dart';

import '../../utils/color_constants.dart';

class ReedemPage extends StatefulWidget {
  const ReedemPage({Key? key}) : super(key: key);

  @override
  State<ReedemPage> createState() => _ReedemPageState();
}

class _ReedemPageState extends State<ReedemPage> {
  String _selectedOption = 'Option 1';
  bool showRecentData = false;

  void toggleData() {
    setState(() {
      showRecentData = !showRecentData;
    });
  }

  bool _isFilterActive = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    width * 0.02, width * 0.02, 0, width * 0.02),
                child: Text('Alphabetic',
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
              IconButton(
                // key: _filterButtonKey,
                onPressed: () {
                  toggleData();
                  if (showRecentData) {
                    RecentDataWidget();
                  } else {
                    NextDataWidget();
                  }
                },
                icon: const Icon(Icons.filter_list),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NextDataWidget extends StatelessWidget {
  const NextDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          onChanged: (searchTerm) {
            // _performSearch(searchTerm);
          },
          cursorColor: ColorConstant.primary,
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: ColorConstant.paleblue),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: ColorConstant.paleblue),
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: "Search",
            filled: false,
            fillColor: const Color(0xfff1f1f1),
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: ColorConstant.paleblue),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(30),
            ),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 12,
      ),
      Expanded(
        child: SizedBox(
          height: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 3,
            shadowColor: Colors.black,
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/cafe1.png'),
                  SizedBox(
                      // width: 8,
                      ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(' hi',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: ColorConstant.primary)),
                      Text('hi',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: ColorConstant.paleblue))
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Reward Points',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstant.paleblue)),
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
          ),
        ),
      ),
    ]);
  }
}

class RecentDataWidget extends StatelessWidget {
  const RecentDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}
