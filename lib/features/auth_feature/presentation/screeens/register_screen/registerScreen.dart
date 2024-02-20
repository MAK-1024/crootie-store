import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/features/auth_feature/presentation/screeens/login_screen/loginscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/reusable_compnant/buttoncompo.dart';
import '../../../../../core/reusable_compnant/textfield_compo.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Align(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  SizedBox(height:130 ,),

                  Text('إنشاء حساب ' , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.normal),),

                  // SizedBox(height:5 ,),

                  Text('أدخل بياناتك الشخصية  ' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w700 , color: Color.fromRGBO(168, 166, 167, 100)),),


                  SizedBox(height:50 ,),
                  CustomTextField(hintText: 'الإسم', prefixIcon: Icons.person,),
                  CustomTextField(hintText: 'الحساب الاكتروني', prefixIcon: Icons.email,),
                  CustomTextField(hintText: 'كلمة المرور', prefixIcon: Icons.key,),
                  CustomTextField(hintText: 'تأكبد كلمة المرور', prefixIcon: Icons.key,),

                  SizedBox(height:40 ,),

                  CustomMaterialButton(
                    onPressed: (){

                    },
                    buttonText: 'إنشاء حساب',
                    buttonColor: AppColor.mainColor,
                  ),
                  SizedBox(height:15 ,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('هل لديك حساب ؟'),
                      TextButton(onPressed: (){Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );}, child: Text('تسجيل الدخول' , style: TextStyle(color: AppColor.mainColor , decoration: TextDecoration.underline,), ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
