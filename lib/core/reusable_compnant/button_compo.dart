import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color buttonColor;
  final double height;
  final double minWidth;
  final Icon? icon; // New optional parameter for the icon

  const CustomMaterialButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.buttonColor,
    this.height = 48.0,
    this.minWidth = 320.0,
    this.icon, // New optional parameter for the icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: height,
      minWidth: minWidth,
      child: Text(buttonText,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),), // Show the icon if it is provided


    );
  }
}
