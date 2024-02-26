import 'package:flutter/material.dart';

import '../../../../../../core/utils/style.dart';

// ignore: must_be_immutable
class CustomDropDownButton extends StatefulWidget {
  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? selectValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DropdownButton<String>(
          icon: const Icon(Icons.keyboard_arrow_down),
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
