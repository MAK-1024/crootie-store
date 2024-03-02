import 'package:flutter/material.dart';
import 'package:crootie_store/core/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final void Function(String) onChange;
  final bool isPassword;

  CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    required this.onChange,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.isPassword = false, // Default to non-password field
  }) : super(key: key);

  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        onChanged: onChange,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword && !_isPasswordVisible,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.mainColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[700]),
          prefixIcon: Icon(prefixIcon, color: AppColor.mainColor),
          suffixIcon: isPassword
              ? GestureDetector(
                  onTap: () {
                    _isPasswordVisible = !_isPasswordVisible;
                  },
                  child: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColor.mainColor,
                  ),
                )
              : null,
          filled: false,
        ),
        validator: validator,
      ),
    );
  }
}
