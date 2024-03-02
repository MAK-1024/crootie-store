import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/style.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_profile_screen/setting_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        centerTitle: true,
        title: Align(
          alignment: Alignment.topRight,
          child: Transform.translate(
            offset: const Offset(0, 12),
            child: Text('الحساب الشخصي', style: AppStyle.textStyle20),
          ),
        ),
      ),
      body: Align(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              'مختار محمد أبو خبطة',
              style: TextStyle(fontSize: 28.sp),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'moukhtar@gmail.com',
              style: TextStyle(fontSize: 16.sp, color: Colors.grey[500]),
            ),
            SizedBox(
              height: 30.h,
            ),
            const Divider(
              thickness: 1,
              indent: 22,
              endIndent: 22,
            ),
            const SettingList()
          ],
        ),
      ),
    );
  }
}
