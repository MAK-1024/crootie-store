import 'dart:async';

import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/app_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/router.dart';
import '../../../../core/utils/style.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});
  @override
  State<SplashBody> createState() => _SplashBodyState();
}


class _SplashBodyState extends State<SplashBody> {


  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.konBoardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashBackGroundColor,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              AppString.splashName1,
              style: AppStyle.textStyle48),

            Text(
                AppString.splashName2,
              style: AppStyle.textStyle48),
          ],
        ),
      ),
    );
  }
}
