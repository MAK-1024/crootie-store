import 'package:crootie_store/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: MaterialButton(
          padding: const EdgeInsets.only(top: 5),
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          minWidth: 150.w,
          color: Colors.white,
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kLoginScreen);
          },
          child: Text(
            "Get Started",
            style: AppStyle.textStyle16.copyWith(
              color: AppColor.splashBackGroundColor.withOpacity(0.5),
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
