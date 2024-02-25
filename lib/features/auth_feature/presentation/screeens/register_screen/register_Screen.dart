// ignore_for_file: must_be_immutable

import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/features/auth_feature/presentation/screeens/login_screen/loginscreen.dart';
import 'package:flutter/material.dart';

import '../../../../../core/reusable_compnant/button_compo.dart';
import '../../../../../core/reusable_compnant/textfieldCompo.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Align(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 130,
                    ),

                    const Text(
                      'إنشاء حساب ',
                      style: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.normal),
                    ),

                    // SizedBox(height:5 ,),

                    const Text(
                      'أدخل بياناتك الشخصية  ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(168, 166, 167, 100)),
                    ),

                    const SizedBox(
                      height: 50,
                    ),
                    CustomTextField(
                      hintText: 'الإسم',
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
                      hintText: 'الحساب الاكتروني',
                      prefixIcon: Icons.email,
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء ادخال الحساب الالكتروني';
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                      hintText: 'كلمة المرور',
                      prefixIcon: Icons.key,
                      controller: passWordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء ادخال كلمة المرور';
                        }
                        return null;
                      },
                      isPassword: true,
                    ),
                    CustomTextField(
                      hintText: 'تأكبد كلمة المرور',
                      prefixIcon: Icons.key,
                      controller: rePasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء تأكيد كلمة المرور ';
                        }
                        return null;
                      },
                      isPassword: true,
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    CustomMaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) ;
                      },
                      buttonText: 'إنشاء حساب',
                      buttonColor: AppColor.mainColor,
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('هل لديك حساب ؟'),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: const Text(
                              'تسجيل الدخول',
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