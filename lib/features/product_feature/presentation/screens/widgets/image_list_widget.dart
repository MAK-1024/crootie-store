import 'package:crootie_store/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';

class ImageList extends StatelessWidget {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114.h,
      width: 365.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 114.h,
            width: 111.w,
            margin: const EdgeInsets.only(left: 15),
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: AppColor.mainColor,
              ),
            ),
            child: Image.asset(AppConst.img5),
          );
        },
      ),
    );
  }
}
