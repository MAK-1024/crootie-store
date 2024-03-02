// ignore_for_file: must_be_immutable

import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/features/auth_feature/presentation/controller/cubit/auth_cubit.dart';
import 'package:crootie_store/features/auth_feature/presentation/screeens/login_screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/reusable_compnant/button_compo.dart';
import '../../../../../core/reusable_compnant/textfieldCompo.dart';
import '../../../../../core/utils/router.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Align(
            child: SingleChildScrollView(
              child: BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthRegisterSuccessState) {
                    if (state.authModel.state == 1) {
                      Fluttertoast.showToast(
                          msg: state.authModel.msg!,
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: AppColor.mainColor,
                          textColor: Colors.white,
                          fontSize: 16.0);

                      GoRouter.of(context).push(AppRouter.kLoginScreen);
                    } else {
                      Fluttertoast.showToast(
                          msg: state.authModel.msg!,
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  }
                  if (state is AuthErrorState) {
                    Fluttertoast.showToast(
                        msg: state.errmessage,
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  } else {
                    const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
                builder: (context, state) {
                  return Form(
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
                          onChange: (name) {
                            nameController.text = name;
                          },
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
                          onChange: (email) {
                            emailController.text = email;
                          },
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
                          onChange: (password) {
                            passWordController.text = password;
                          },
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
                          onChange: (phone) {
                            phoneController.text = phone;
                          },
                          hintText: ' رقم الهاتف ',
                          prefixIcon: Icons.phone,
                          controller: phoneController,
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
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              await BlocProvider.of<AuthCubit>(context)
                                  .RegisterUser(
                                      nameController.text,
                                      passWordController.text,
                                      phoneController.text,
                                      emailController.text);
                            }
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
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
