import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:crootie_store/core/utils/app_color.dart';

abstract class AppStyle {
  static const TextStyle textStyle12 = TextStyle(
    color: Colors.grey,
    fontSize: 12,
  );
  static const TextStyle textStyle_14 = TextStyle(
      color: AppColor.mainColor,
      fontSize: 16,
      );
  static const TextStyle textStyle14 = TextStyle(
      color: AppColor.mainColor,
      fontSize: 16,
      decoration: TextDecoration.underline);
  static const TextStyle textStyle16 = TextStyle(
    color: AppColor.appbarWidgetsColor,
    fontSize: 16,
  );
  static const TextStyle textStyle18 = TextStyle(
    color: AppColor.appbarWidgetsColor,
    fontSize: 18,
  );
  static const TextStyle textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyle32 = TextStyle(
    color: Colors.white,
    fontSize: 32,
  );
  static const TextStyle textStyle48 = TextStyle(
    color: Colors.white,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    fontFamily: "Cairo",
  );
  static const TextStyle textStyle20 = TextStyle(
    color: AppColor.mainColor,
    fontSize: 20,
  );
}

const TextStyle textStyle = TextStyle();
