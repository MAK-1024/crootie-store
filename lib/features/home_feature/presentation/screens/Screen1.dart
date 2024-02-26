import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/body_of_homescreen.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/drawer_widgets/drawer_body_widgets.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: DrawerWidget(),
        ),
        body: const SafeArea(child: HomeScreenBody()));
  }
}
