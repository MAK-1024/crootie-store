import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/body_of_homescreen.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets_of_profile_screen/body_of_profilescreen.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: ProfileScreenBody()));
  }
}
