import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/router.dart';
import 'package:crootie_store/core/utils/style.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/drawer_widgets/custom_checkbox_widget.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/drawer_widgets/custom_dropdown_button_widget.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/drawer_widgets/header_of_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
        padding:
            const EdgeInsets.only(top: 45, bottom: 10, right: 10, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderOfDrawer(),
            DropDownButton(),
            ListViewOfCheckBoxWidget(),
            const Spacer(),
            MaterialButton(
              height: 46.h,
              minWidth: 183.w,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSelectedProducts);
              },
              color: AppColor.mainColor,
              textColor: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("عرض المنتجات"),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            )
          ],
        ));
  }
}
