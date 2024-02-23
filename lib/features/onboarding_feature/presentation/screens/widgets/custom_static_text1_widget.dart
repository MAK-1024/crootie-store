import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomText1 extends StatelessWidget {
  const CustomText1({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Text(
      currentPage == 0
          ? "تسوق من اكتر من متجر"
          : currentPage == 1
              ? "أهلاً و سهلاً بكم"
              : "لنشتري الاشياء الأن",
      style: AppStyle.onBoardingTextStyle,
    );
  }
}
