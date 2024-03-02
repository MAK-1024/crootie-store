import "package:crootie_store/core/utils/app_color.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class Boxes extends StatelessWidget {
  const Boxes({Key? key, required this.currentPage}) : super(key: key);

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 9),
            height: 15.h,
            width: 15.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: currentPage == 0
                  ? AppColor.splashBackGroundColor
                  : Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 9),
            height: 15.h,
            width: 15.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: currentPage == 1
                  ? AppColor.splashBackGroundColor
                  : Colors.white,
            ),
          ),
          Container(
            height: 15.h,
            width: 15.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: currentPage == 2
                  ? AppColor.splashBackGroundColor
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
