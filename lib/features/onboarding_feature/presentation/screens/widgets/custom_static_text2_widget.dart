import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomText2 extends StatelessWidget {
  const CustomText2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "مرحباً بكم في متجرنا , كبسو كبسو",
      style: AppStyle.onBoardingTextStyle2,
    );
  }
}
