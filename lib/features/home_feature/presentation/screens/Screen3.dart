import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_favscreen/body_of_favscreen.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets_of_profile_screen/body_of_profilescreen.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: FavScreenBody()));
  }
}
