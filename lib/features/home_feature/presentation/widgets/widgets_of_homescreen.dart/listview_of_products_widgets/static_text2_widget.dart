import 'package:flutter/material.dart';

import '../../../../../../core/utils/style.dart';

class StaticText2 extends StatelessWidget {
  const StaticText2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          " جديد",
          style: AppStyle.textStyle16.copyWith(color: Colors.black),
        ),
        const Spacer(),
        TextButton(
          child: const Text(
            "المزيد",
            style: AppStyle.textStyle14,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
