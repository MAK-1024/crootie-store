import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/style.dart';

class DetailsOfGridViewItem extends StatelessWidget {
  const DetailsOfGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Colors.white,
            elevation: 1,
            child: SizedBox(
              height: 24.h,
              width: 24.w,
              child: IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart,
                    size: 14,
                  )),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 40.0, bottom: 5),
        child: Image.asset(
          AppConst.img5,
          width: 64.w,
          height: 92.h,
        ),
      ),
      Text(
        "رجالي",
        style: AppStyle.textStyle12,
      ),
      Text(
        "جاكيت شبابي شتوي للصقع",
        style: AppStyle.textStyle14
            .copyWith(color: Colors.black, decoration: TextDecoration.none),
      ),
      SizedBox(
        height: 5.h,
      ),
      Row(
        children: [
          Text(
            "متوفر",
            style: AppStyle.textStyle12,
          ),
          const Spacer(),
          Text(
            "109.99",
            style: AppStyle.textStyle14.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            "د ل",
            style: AppStyle.textStyle14.copyWith(
                color: AppColor.mainColor.withOpacity(0.5),
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none),
          ),
        ],
      )
    ]);
  }
}
