import 'package:crootie_store/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/style.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
      width: double.infinity,
      color: Colors.white,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kHomeView);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "تخطي",
              style: AppStyle.textStyle16,
            ),
            SizedBox(
              width: 5.w,
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.grey,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
