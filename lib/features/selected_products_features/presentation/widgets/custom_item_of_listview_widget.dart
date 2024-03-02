import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style.dart';

class ItemOfListViewSelectedCategories extends StatelessWidget {
  const ItemOfListViewSelectedCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 32.h,
        width: 101.w,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border(
                top: BorderSide(width: 0.2.w, color: Colors.grey),
                bottom: BorderSide(width: 0.2.w, color: Colors.grey),
                right: BorderSide(width: 0.2.w, color: Colors.grey),
                left: BorderSide(width: 0.2.w, color: Colors.grey))),
        child: Row(
          children: [
            Text(
              "سراويل",
              style: AppStyle.textStyle14.copyWith(
                  color: Colors.black, decoration: TextDecoration.none),
            ),
            const Spacer(),
            const Icon(
              Icons.close,
              size: 20,
              color: AppColor.mainColor,
            )
          ],
        ));
  }
}
