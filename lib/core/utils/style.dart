import 'package:flutter/material.dart';
import 'package:crootie_store/core/utils/app_color.dart';

abstract class AppStyle {
  static const TextStyle textStyle16 = TextStyle(
    color: AppColor.appbarWidgetsColor,
    fontSize: 16,
  );
  static const TextStyle textStyle14 = TextStyle(
      color: AppColor.mainColor,
      fontSize: 16,
      decoration: TextDecoration.underline);

  static const TextStyle textStyle32 = TextStyle(
    color: Colors.white,
    fontSize: 32,
  );
  static const TextStyle textStyle12 = TextStyle(
    color: Colors.grey,
    fontSize: 12,
  );
}

const TextStyle textStyle = TextStyle();
