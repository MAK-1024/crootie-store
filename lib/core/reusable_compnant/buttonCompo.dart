import 'package:flutter/material.dart';
import 'package:crootie_store/core/utils/app_color.dart';

class CustomMaterialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color buttonColor;
  final double height;
  final double minWidth;

  const CustomMaterialButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.buttonColor,
    this.height = 48.0,
    this.minWidth = 320.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white),
      ),
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: height,
      minWidth: minWidth,
    );
  }
}
