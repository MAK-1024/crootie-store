import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/style.dart';
import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/boxes_widgets.dart';
import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/custom_appbar_widget.dart';
import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/custom_button_widget.dart';
import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/custom_static_text1_widget.dart';
import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/page_one_widgets/page_one_screen.dart';
import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/page_three_widgets/page_three_screen.dart';
import 'package:crootie_store/features/onboarding_feature/presentation/screens/widgets/page_two_widgets/page_two_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_static_text2_widget.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColor.splashBackGroundColor.withOpacity(0.5),
          child: Column(
            children: [
              const CustomAppbarWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (int page) {
                    currentPage = page;
                    setState(() {});
                  },
                  children: const [Page1(), Page2(), Page3()],
                ),
              ),
              const SizedBox(),
              CustomText1(
                currentPage: currentPage,
              ),
              const CustomText2(),
              currentPage == 2
                  ? const CustomButton()
                  : Boxes(
                      currentPage: currentPage,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
