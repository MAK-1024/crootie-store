import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/style.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 5),
      width: 320.w,
      height: 40.h,
      child: TextFormField(
        showCursor: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          suffixIcon: const Icon(
            Icons.search,
            size: 20,
          ),
          hintText: "ابحت عن ما تريد",
          hintStyle: AppStyle.textStyle14
              .copyWith(color: Colors.grey, decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
