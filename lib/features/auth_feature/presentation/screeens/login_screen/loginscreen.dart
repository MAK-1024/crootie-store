import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/features/auth_feature/presentation/screeens/register_screen/registerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/reusable_compnant/buttoncompo.dart';
import '../../../../../core/reusable_compnant/textfield_compo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SizedBox(height:130 ,),

                Text('تسجيل الدخول' , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.normal),),

                // SizedBox(height:5 ,),

                Text('أدخل حسابك وكلمة المرور' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w700 , color: Color.fromRGBO(168, 166, 167, 100)),),


                SizedBox(height:50 ,),
                CustomTextField(
                  hintText: 'الاسم',
                  prefixIcon: Icons.person,
                ),
                CustomTextField(
                  hintText: 'كلمة المرور',
                  prefixIcon: Icons.key,
                ),
                SizedBox(height:50 ,),

                CustomMaterialButton(
                  onPressed: () {  },
                  buttonText: 'تسجبل الدخول',
                  buttonColor: AppColor.mainColor,
                ),
                SizedBox(height:30 ,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ليس لديك حساب ؟'),
                    TextButton(
                        onPressed: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterScreen()),
                          );
                        }, child: Text('إنشاء حساب' , style: TextStyle(color: AppColor.mainColor , decoration: TextDecoration.underline,), ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
