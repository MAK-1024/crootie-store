import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_profile_screen/setting_list_widget.dart';
import 'package:flutter/material.dart';

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
            child: const Text('الحساب الشخصي',
                style: TextStyle(color: AppColor.mainColor)),
          ),
        ),
      ),
      body: Align(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'مختار محمد أبو خبطة',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'moukhtar@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.grey[500]),
            ),
            const SizedBox(
              height: 30,
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
