import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              height: 35,
              width: 35,
              child: IconButton(
                  padding: const EdgeInsets.only(top: 0),
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart,
                    size: 20,
                  )),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: Image.asset(
          AppConst.img5,
          width: 82,
          height: 117,
        ),
      ),
      const Text(
        "جاكيت شبابي",
        style: AppStyle.textStyle12,
      ),
      Text(
        "جاكيت شبابي شتوي للصقع",
        style: AppStyle.textStyle14.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.none),
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        children: [
          const Text(
            "متوفر 3 قطع",
            style: AppStyle.textStyle12,
          ),
          const Spacer(),
          Text(
            "109.99",
            style: AppStyle.textStyle16
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5,
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
