import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/page_two_widgets/page2_containerclipper.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          ClipPath(
            clipper: ContainerClipper2(),
            child: Container(
              height: MediaQuery.of(context).size.height * .55,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 44,
            child: Image.asset(
              AppConst.img2,
              width: 337,
              height: 456,
            ),
          )
        ],
      ),
    );
  }
}
