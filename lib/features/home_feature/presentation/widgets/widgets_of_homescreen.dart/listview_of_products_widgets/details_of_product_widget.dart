import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/style.dart';

class DetailsOfItem extends StatelessWidget {
  const DetailsOfItem({super.key});

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
              height: 30.h,
              width: 30.w,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart,
                    size: 18,
                  )),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 40.0, bottom: 3),
        child: Image.asset(
          AppConst.img5,
          width: 82.w,
          height: 117.h,
        ),
      ),
      Text(
        "جاكيت شبابي",
        style: AppStyle.textStyle12,
      ),
      Text(
        "جاكيت شبابي شتوي للصقع",
        style: AppStyle.textStyle14
            .copyWith(color: Colors.black, decoration: TextDecoration.none),
      ),
      SizedBox(
        height: 10.h,
      ),
      Row(
        children: [
          Text(
            "متوفر 3 قطع",
            style: AppStyle.textStyle12,
          ),
          const Spacer(),
          Text(
            "109.99",
            style: AppStyle.textStyle16
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            "د ل",
            style: AppStyle.textStyle16.copyWith(
                color: AppColor.mainColor.withOpacity(0.5),
                fontWeight: FontWeight.bold),
          ),
        ],
      )
    ]);
  }
}
