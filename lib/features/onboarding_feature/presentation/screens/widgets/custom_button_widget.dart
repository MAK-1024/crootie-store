import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: MaterialButton(
          padding: const EdgeInsets.only(top: 5),
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          minWidth: 150,
          color: Colors.white,
          onPressed: () {},
          child: Text(
            "Get Started",
            style: AppStyle.buttonTextStyle,
          )),
    );
  }
}
