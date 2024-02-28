import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/router.dart';
import 'package:crootie_store/features/auth_feature/presentation/screeens/register_screen/register_Screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/reusable_compnant/button_compo.dart';
import '../../../../../core/reusable_compnant/textfieldCompo.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Align(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 130,
                    ),

                    const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.normal),
                    ),

                    // SizedBox(height:5 ,),

                    const Text(
                      'أدخل حسابك وكلمة المرور',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(168, 166, 167, 100)),
                    ),

                    const SizedBox(
                      height: 50,
                    ),
                    CustomTextField(
                      hintText: ' الاسم / الحساب الالكتروني',
                      prefixIcon: Icons.person,
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء ادخال الاسم';
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      hintText: 'كلمة المرور',
                      prefixIcon: Icons.key,
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء ادخال كلمة المرور';
                        }
                        return null;
                      },
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    CustomMaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) ;
                        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
                      },
                      buttonText: 'تسجيل الدخول',
                      buttonColor: AppColor.mainColor,

                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('ليس لديك حساب ؟'),
                        TextButton(
                            onPressed: () {
                              GoRouter.of(context).pushReplacement(AppRouter.kRegisterScreen);
                            },
                            child: const Text(
                              'إنشاء حساب',
                              style: TextStyle(
                                color: AppColor.mainColor,
                                decoration: TextDecoration.underline,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
