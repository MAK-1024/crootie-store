import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/page_one_widgets/page1_containerclipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/constants.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          ClipPath(
            clipper: ContainerClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * .55,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 44,
            child: Image.asset(
              AppConst.img1,
              width: 352.w,
              height: 456.h,
            ),
          )
        ],
      ),
    );
  }
}
