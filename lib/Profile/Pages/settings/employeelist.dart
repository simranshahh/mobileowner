// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:mobileowner/utils/color_constants.dart';
import 'package:mobileowner/utils/size_config.dart';

class EmployeeList extends StatefulWidget {
  EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

TextEditingController valuectrl = TextEditingController();

var items = [
  "Sinamangal, Kathmandu",
  "Gwarko, Lalitpur",
  "Satobato, Lalitpur",
];

class _EmployeeListState extends State<EmployeeList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.primary,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: displayHeight(context) * 0.07),
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
            padding: EdgeInsets.only(top: displayHeight(context) * 0.18),
            child: Container(
              height: displayHeight(context),
              width: displayWidth(context),
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
            padding: EdgeInsets.only(top: displayHeight(context) * 0.22),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: displayHeight(context) * 0.02),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextField(
                            controller: valuectrl,
                            onChanged: (searchTerm) {},
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
                          SizedBox(
                            height: displayHeight(context), 
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  height: displayHeight(context) * 0.12,
                                  width: displayWidth(context) * 0.18,
                                  child: InkWell(
                                    onTap: () {
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            SizedBox(
                                          width: displayWidth(context) * 0.9,
                                          child: AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  18,
                                                ),
                                              ),
                                            ),
                                            title: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: displayWidth(
                                                              context) *
                                                          0.6),
                                                  child: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons.close)),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Transfer:',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    ),
                                                    Text(
                                                      ' Anina Maharjan',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height:
                                                      displayHeight(context) *
                                                          0.01,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'From:',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    ),
                                                    Text(
                                                      ' Kunpondol,Lalitpur',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height:
                                                      displayHeight(context) *
                                                          0.01,
                                                ),
                                                Text(
                                                  'To:',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: SizedBox(
                                                            width: displayWidth(
                                                                    context) *
                                                                2,
                                                            child:
                                                                TextFormField(
                                                                    readOnly:
                                                                        true,
                                                                    style: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .headlineMedium!
                                                                        .copyWith(
                                                                            fontWeight: FontWeight
                                                                                .w400),
                                                                    // onSaved: (input) => gender = input,
                                                                    controller:
                                                                        valuectrl,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          'Gender',
                                                                      suffixIcon:
                                                                          PopupMenuButton<
                                                                              String>(
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .arrow_drop_down,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        onSelected:
                                                                            (String
                                                                                value) {
                                                                          valuectrl.text =
                                                                              value;
                                                                        },
                                                                        itemBuilder:
                                                                            (BuildContext
                                                                                context) {
                                                                          return items.map<PopupMenuItem<String>>((String
                                                                              value) {
                                                                            return PopupMenuItem(
                                                                                value: value,
                                                                                child: Text(value));
                                                                          }).toList();
                                                                        },
                                                                      ),
                                                                    )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: displayHeight(
                                                              context) *
                                                          0.05,
                                                    ),
                                                    Center(
                                                      child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Confirm',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Card(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: displayHeight(context) * 0.02,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                'assets/profile.png',
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  'Anina Maharjan',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge!
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                                Text(
                                                  'Putalisadak Branch',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            Center(
                                              child: Text(
                                                'Transfer',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                        color: ColorConstant
                                                            .primary,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        decoration:
                                                            TextDecoration
                                                                .underline),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
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
