import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/style.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/drawer_widgets/custom_checkbox_widget.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/drawer_widgets/custom_dropdown_button_widget.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/drawer_widgets/header_of_drawer_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 45, bottom: 0, right: 10, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderOfDrawer(),
            const SizedBox(
              height: 20,
            ),
            CustomDropDownButton(),
            CustomCheckBoxWidget(),
          ],
        ));
  }
}
