// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../utils/color_constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 6,
      shadowColor: Colors.black26,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 18,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: ColorConstant.primary,
              ),
              SizedBox(width: 13),
              Expanded(
                child: Text(text,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: ColorConstant.primary)),
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorConstant.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
