import 'package:crootie_store/features/auth_feature/presentation/screeens/register_screen/register_Screen.dart';
import 'package:crootie_store/features/home_feature/presentation/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/router.dart';
import 'features/auth_feature/presentation/screeens/login_screen/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.tajawalTextTheme(),
      ),

      home: HomePage(),
      // routerConfig: AppRouter.router,
    );
  }
}
