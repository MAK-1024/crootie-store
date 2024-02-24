// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:crootie_store/core/utils/app_color.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../onboarding_feature/presentation/screens/onboard.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Center(
//       child: AnimatedSplashScreen(
//         splash: Container(
//             // color: Colors.black,
//             child: Text('CROOTIE\n- كروتي -',style: TextStyle(color: Colors.white , fontSize: 28),),
//
//         ),
//             // Text('- كروتي -',style: TextStyle(color: Colors.white, fontSize: 42),),
//
//         nextScreen: Onboard(),
//         backgroundColor: AppColor.splashBackGroundColor,
//
//         splashTransition: SplashTransition.fadeTransition,
//       ),
//     );
//   }
// }
//

// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../onboarding_feature/presentation/screens/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'CROOTIE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontFamily: "Cairo",
              ),
            ),
            Text(
              '- كروتي -',
              style: TextStyle(
                  color: Colors.white, fontSize: 48, fontFamily: 'Cairo'),
            ),
          ],
        ),
      ),
    );
  }
}
