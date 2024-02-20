import 'package:flutter/material.dart';
import 'package:crootie_store/core/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.mainColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[700]),
          prefixIcon: Icon(prefixIcon, color: AppColor.mainColor),
          filled: false,
        ),
      ),
    );
  }
}
