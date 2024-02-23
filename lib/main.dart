import 'package:crootie_store/features/onboarding_feature/presentation/screens/onboard.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      // theme: ThemeData(textTheme: GoogleFonts.tajawalTextTheme()),
      home: const Onboard(),
    );
  }
}
