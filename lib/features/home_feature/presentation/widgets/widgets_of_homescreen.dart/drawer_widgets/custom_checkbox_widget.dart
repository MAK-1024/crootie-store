import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/style.dart';

class ListViewOfCheckBoxWidget extends StatelessWidget {
  ListViewOfCheckBoxWidget({super.key});

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
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 7),
          itemCount: itemNames.length,
          itemBuilder: (context, index) {
            return Container(
              height: 28,
              width: 55,
              margin: const EdgeInsets.only(top: 5),
              child: CheckboxTheme(
                data: CheckboxThemeData(
                    side: const BorderSide(width: 0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
                child: CheckboxListTile(
                  activeColor: AppColor.mainColor,
                  checkColor: Colors.white,
                  value: checkedValues[index],
                  onChanged: ((value) {}),
                  title: Text(
                    itemNames[index],
                    style: AppStyle.textStyle16.copyWith(color: Colors.black),
                  ),
                  contentPadding: const EdgeInsets.only(left: 0),
                ),
              ),
            );
          }),
    );
  }
}
