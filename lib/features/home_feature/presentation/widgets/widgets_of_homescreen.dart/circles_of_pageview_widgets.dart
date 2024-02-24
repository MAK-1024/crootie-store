import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class CirclesWidets extends StatelessWidget {
  const CirclesWidets({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCircleContainer(currentPage == 0),
            _buildCircleContainer(currentPage == 1),
            _buildCircleContainer(currentPage == 2),
          ],
        ));
  }

  Widget _buildCircleContainer(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: isActive ? AppColor.mainColor : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 7),
      height: 8,
      width: isActive ? 24 : 8,
    );
  }
}
