// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';

import '../../utils/color_constants.dart';

class ReedemPage extends StatefulWidget {
  const ReedemPage({Key? key}) : super(key: key);

  @override
  State<ReedemPage> createState() => _ReedemPageState();
}

class _ReedemPageState extends State<ReedemPage> {
  String _selectedOption = 'Option 1';

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
                onPressed: () {},
                icon: const Icon(Icons.filter_list),
              ),
            ],
          ),
        ),
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
            height: height * 0.5,
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
      ],
    );
  }
}

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
