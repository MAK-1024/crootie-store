import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class SettingList extends StatelessWidget {
  const SettingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:  Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
               const SizedBox(
                height: 10,
              ),
              const ListTile(
                leading: const Icon(
                  Icons.person_pin,
                  color: AppColor.mainColor,
                ),
                title: const Text('إعدادات الحساب'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.mainColor,
                ),
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
                  Icons.arrow_forward_ios,
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
                  Icons.arrow_forward_ios,
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
                  Icons.arrow_forward_ios,
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
                  Icons.arrow_forward_ios,
                  color: AppColor.mainColor,
                ),
                onTap: () {
                  // Handle "Rate Us" item tap
                },
              ),

            ],
          ),
        ));
  }
}
