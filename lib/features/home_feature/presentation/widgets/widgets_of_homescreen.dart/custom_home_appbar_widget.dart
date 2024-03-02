import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeAppbarWidget extends StatelessWidget {
  const CustomHomeAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Colors.white,
          elevation: 1,
          child: SizedBox(
            height: 35.h,
            width: 35.w,
            child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  CupertinoIcons.square_grid_2x2,
                  size: 20.sp,
                )),
          ),
        ),
        const Spacer(),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: Colors.white,
          elevation: 1,
          child: SizedBox(
            height: 35.h,
            width: 35.w,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bell,
                  size: 20.sp,
                )),
          ),
        ),
      ],
    );
  }
}
