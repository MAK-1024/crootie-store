import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
      width: double.infinity,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "تخطي",
            style: AppStyle.appBarTextStyle,
          )
        ],
      ),
    );
  }
}
