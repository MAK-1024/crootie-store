import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/style.dart';

class CustomProductsAppbarWidget extends StatelessWidget {
  const CustomProductsAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      child: Row(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.white,
            elevation: 1,
            child: SizedBox(
              height: 35.h,
              width: 35.w,
              child: Icon(
                CupertinoIcons.square_grid_2x2,
                size: 20.sp,
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                "رجوع",
                style: AppStyle.textStyle16,
              ),
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.arrow_forward,
                size: 22.sp,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
