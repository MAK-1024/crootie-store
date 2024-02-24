import 'package:crootie_store/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Align(
          alignment: Alignment.topRight,
          child: Transform.translate(
            offset: const Offset(0, 12), // Adjust the vertical offset as needed
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
            Expanded(
                child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.person_pin,
                      color: AppColor.mainColor,
                    ),
                    title: const Text('إعدادات الحساب'),
                    trailing: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColor.mainColor,
                    ),
                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'الاعدادات العامة',
                      style: TextStyle(color: AppColor.mainColor, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.notifications_none_outlined,
                      color: AppColor.mainColor,
                    ),
                    title: const Text('الاشعارات'),
                    trailing: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColor.mainColor,
                    ),
                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: AppColor.mainColor,
                    ),
                    title: const Text('تواصل معنا'),
                    trailing: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColor.mainColor,
                    ),
                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.copy,
                      color: AppColor.mainColor,
                    ),
                    title: const Text('سياسة التوصيل والاسترجاع '),
                    trailing: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColor.mainColor,
                    ),
                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.edit_note,
                      color: AppColor.mainColor,
                    ),
                    title: const Text('موافقة على الخصوصية '),
                    trailing: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColor.mainColor,
                    ),
                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                      color: AppColor.mainColor,
                    ),
                    title: const Text('تسجيل الخروج'),
                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
