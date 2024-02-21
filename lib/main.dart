import 'package:crootie_store/features/auth_feature/presentation/screeens/profile_screen/profileScreen.dart';
import 'package:flutter/material.dart';

import 'features/auth_feature/presentation/screeens/login_screen/loginscreen.dart';
import 'features/auth_feature/presentation/screeens/register_screen/registerScreen.dart';
import 'features/splash_feature/presentation/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: ProfileScreen (),
    );
  }
}


