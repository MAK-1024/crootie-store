import 'package:crootie_store/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/style.dart';

// ignore: must_be_immutable
class DropDownButton extends StatefulWidget {
  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? selectValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DropdownButton<String>(
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: AppColor.mainColor,
          ),
          value: selectValue,
          items: const [
            DropdownMenuItem(
              value: "رجال",
              child: Text(
                "رجال",
                style: AppStyle.textStyle20,
              ),
            ),
            DropdownMenuItem(
              value: "نساء",
              child: Text("نساء"),
            ),
            DropdownMenuItem(
              value: "اطفال",
              child: Text("اطفال"),
            ),
          ],
          onChanged: (value) {
            selectValue = value;
            setState(() {});
          }),
    );
  }
}
