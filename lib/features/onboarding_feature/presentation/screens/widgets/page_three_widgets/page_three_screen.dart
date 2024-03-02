import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/page_three_widgets/page3_containerclipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/constants.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          ClipPath(
            clipper: ContainerClipper3(),
            child: Container(
              height: MediaQuery.of(context).size.height * .55,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 44,
            child: Image.asset(
              AppConst.img3,
              width: 337.w,
              height: 456.h,
            ),
          )
        ],
      ),
    );
  }
}
