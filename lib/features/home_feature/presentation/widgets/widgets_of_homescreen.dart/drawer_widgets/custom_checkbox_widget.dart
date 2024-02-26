import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/style.dart';

class CustomCheckBoxWidget extends StatelessWidget {
  CustomCheckBoxWidget({super.key});

  final List<bool> checkedValues = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<String> itemNames = [
    'تيشرت',
    'سراوبل',
    'احذية',
    "اكسيسوارات",
    "جكتات",
    "قمصان",
    "ملابس نوم",
    "ملابس داخلية",
    "هودي"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: itemNames.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
              activeColor: AppColor.mainColor,
              checkColor: Colors.white,
              value: checkedValues[index],
              onChanged: ((value) {}),
              title: Text(
                itemNames[index],
                style: AppStyle.textStyle16.copyWith(color: Colors.black),
              ),
              contentPadding: const EdgeInsets.only(left: 0),
            );
          }),
    );
  }
}
