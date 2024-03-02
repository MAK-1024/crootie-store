import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/router.dart';
<<<<<<< HEAD
import 'package:crootie_store/features/auth_feature/presentation/controller/cubit/auth_cubit.dart';
=======
>>>>>>> 8b8dec6bfb5e7680a242288481a4c404df7f2746
import 'package:crootie_store/features/auth_feature/presentation/screeens/register_screen/register_Screen.dart';
import 'package:crootie_store/features/home_feature/presentation/screens/homeScreen.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
=======
>>>>>>> 8b8dec6bfb5e7680a242288481a4c404df7f2746
import 'package:go_router/go_router.dart';

import '../../../../../core/reusable_compnant/button_compo.dart';
import '../../../../../core/reusable_compnant/textfieldCompo.dart';

// ignore: must_be_immutable
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
          body: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccessState) {
                if (state.authModel.state == 1) {
                  Fluttertoast.showToast(
                      msg: state.authModel.msg!,
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: AppColor.mainColor,
                      textColor: Colors.white,
                      fontSize: 16.0);

<<<<<<< HEAD
                  GoRouter.of(context).push(AppRouter.kHomeView);
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
              return Align(
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
                          onChange: (name) {
                            nameController.text = name;
                          },
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
                          onChange: (pass) {
                            passwordController.text = pass;
                          },
                          keyboardType: TextInputType.text,
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
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              await BlocProvider.of<AuthCubit>(context)
                                  .loginUser(nameController.text,
                                      passwordController.text);
                            }
                          },
                          buttonText: 'تسجبل الدخول',
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
                                  GoRouter.of(context)
                                      .push(AppRouter.kRegisterScreen);
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
=======
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
>>>>>>> 8b8dec6bfb5e7680a242288481a4c404df7f2746
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
