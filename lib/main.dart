import 'package:crootie_store/core/utils/router.dart';
import 'package:crootie_store/features/home_feature/presentation/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      routerConfig: AppRouter.router,
    );
  }
}
