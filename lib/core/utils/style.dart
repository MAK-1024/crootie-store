import 'package:flutter/material.dart';
import 'package:crootie_store/core/utils/app_color.dart';

abstract class AppStyle {
  static const TextStyle appBarTextStyle = TextStyle(
    color: AppColor.appbarWidgetsColor,
    fontSize: 16,
  );

  static const TextStyle onBoardingTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle onBoardingTextStyle2 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle buttonTextStyle = TextStyle(
    color: AppColor.splashBackGroundColor.withOpacity(0.5),
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
