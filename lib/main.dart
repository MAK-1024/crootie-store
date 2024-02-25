import 'package:crootie_store/features/splash_feature/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/router.dart';
import 'features/onboarding_feature/presentation/screens/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.tajawalTextTheme()),
      // home: const SplashScreen(),
      routerConfig: AppRouter.router ,
    );
  }
}
