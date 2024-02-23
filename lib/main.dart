import 'package:crootie_store/features/onboarding_feature/presentation/screens/onboard.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:google_fonts/google_fonts.dart';
=======

import 'features/product_feature/presentation/screens/productDetails_screen/productDetailsScsreen.dart';

>>>>>>> 959ebd38ed329825ae7455eba24796833e2ea665

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      theme: ThemeData(textTheme: GoogleFonts.tajawalTextTheme()),
      home: const Onboard(),
=======

      home: productDetailsScreen(),
>>>>>>> 959ebd38ed329825ae7455eba24796833e2ea665
    );
  }
}
