import 'package:crootie_store/core/utils/constants.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/circles_of_pageview_widgets.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/custom_home_appbar_widget.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/listview_of_products_widgets/listview_widget.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/listview_of_products_widgets/static_text2_widget.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/listview_of_products_widgets/static_text_widget%20copy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHomeAppbarWidget(),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 165,
              width: 319,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: PageView(
                controller: pageController,
                onPageChanged: (page) {
                  currentPage = page;
                  setState(() {});
                },
                children: [
                  Image.asset(AppConst.img4),
                  Image.asset(AppConst.img4),
                  Image.asset(AppConst.img4)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CirclesWidets(
              currentPage: currentPage,
            ),
            const SizedBox(
              height: 20,
            ),
            const StaticText(),
            const ListViewOfBestSeler(),
            const StaticText2(),
            const ListViewOfBestSeler(),
          ],
        ),
      ),
    );
  }
}
