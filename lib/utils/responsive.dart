import 'package:flutter/material.dart';
// 803 it is my phone hight
// 393 it is my phone width

double getFlexibleHeight(BuildContext context, double px) {
  double screenHight = MediaQuery.of(context).size.height;
  double verticalSize = screenHight * (px / 803);
  return verticalSize;
}

double getFlexibleWidth(BuildContext context, double px) {
  double screenWidth = MediaQuery.of(context).size.width;
  double horizontalSize = screenWidth * (px / 393);
  return horizontalSize;
}


double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getWithd(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

class AppTextStyle {
  final BuildContext context;
  late double screenHight;
  AppTextStyle(this.context) {
    screenHight = MediaQuery.of(context).size.height;
  }

  TextStyle get titleMedium =>
      Theme.of(
        context,
      ).textTheme.titleMedium?.copyWith(fontSize: screenHight * 0.025)??
      TextStyle(fontSize: screenHight * 0.025);

  TextStyle get labelMedium =>
      Theme.of(
        context,
      ).textTheme.labelMedium?.copyWith(fontSize: screenHight * 0.02) ??
      TextStyle(fontSize: screenHight * 0.02);

  TextStyle get labelLarge =>
      Theme.of(
        context,
      ).textTheme.labelLarge?.copyWith(fontSize: screenHight * 0.018,) ??
      TextStyle(fontSize: screenHight * 0.018);
}
