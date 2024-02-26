import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/utils/app_string.dart';
import '../../../../../../core/utils/style.dart';

class HeaderOfDrawer extends StatelessWidget {
  const HeaderOfDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Text(AppString.categoryName,
              style: GoogleFonts.cairo(textStyle: AppStyle.textStyle20)),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
            iconSize: 30,
          )
        ],
      ),
    );
  }
}
