import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Size displaySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  return displaySize(context).width;
}

double setWidth(num value, BuildContext context) {
  return displaySize(context).width * (value / 375);
}

double setHeight(num value, BuildContext context) =>
    displaySize(context).height * (value / 812);
