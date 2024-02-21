import 'package:crootie_store/core/utils/app_color.dart';
import 'package:flutter/cupertino.dart';
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
            offset: Offset(0, 12), // Adjust the vertical offset as needed
            child: Text('الحساب الشخصي', style: TextStyle(color: AppColor.mainColor)),
          ),
        ),
      ),

      body: Align(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text('مختار محمد أبو خبطة' , style: TextStyle(fontSize: 32),),
            SizedBox(height: 3,),
            Text('moukhtar@gmail.com', style: TextStyle(fontSize: 16 , color: Colors.grey[500]),),
            SizedBox(height: 30,),
            Divider(thickness: 1,indent: 22,endIndent: 22,),

            Expanded(child: Directionality(
              textDirection: TextDirection.rtl,
              child: ListView(
                children: [
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(Icons.person_pin ,color: AppColor.mainColor,),
                    title: Text('إعدادات الحساب'),
                    trailing: Icon(Icons.arrow_back_ios_new_outlined ,color: AppColor.mainColor, ),

                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('الاعدادات العامة' , style: TextStyle(color: AppColor.mainColor , fontSize: 20),),
                  ),
                  SizedBox(height: 15,),
                  ListTile(
                    leading: Icon(Icons.notifications_none_outlined ,color: AppColor.mainColor,),
                    title: Text('الاشعارات'),
                    trailing: Icon(Icons.arrow_back_ios_new_outlined ,color: AppColor.mainColor, ),

                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.phone ,color: AppColor.mainColor,),
                    title: Text('تواصل معنا'),
                    trailing: Icon(Icons.arrow_back_ios_new_outlined ,color: AppColor.mainColor, ),

                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.copy ,color: AppColor.mainColor,),
                    title: Text('سياسة التوصيل والاسترجاع '),
                    trailing: Icon(Icons.arrow_back_ios_new_outlined ,color: AppColor.mainColor, ),

                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.edit_note ,color: AppColor.mainColor,),
                    title: Text('موافقة على الخصوصية '),
                    trailing: Icon(Icons.arrow_back_ios_new_outlined ,color: AppColor.mainColor, ),

                    onTap: () {
                      // Handle "Rate Us" item tap
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout ,color: AppColor.mainColor,),
                    title: Text('تسجيل الخروج'),
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
