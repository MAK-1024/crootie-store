import 'package:crootie_store/core/utils/api_server.dart';
import 'package:crootie_store/features/auth_feature/data/repository/Auth_repository.dart';
import 'package:crootie_store/features/auth_feature/presentation/controller/cubit/auth_cubit.dart';
import 'package:crootie_store/features/home_feature/presentation/screens/homeScreen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthCubit(ApiService(Dio()), AuthRepo(apiService: ApiService(Dio()))),
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: ((context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: GoogleFonts.tajawalTextTheme(),
            ),
            routerConfig: AppRouter.router,
          );
        }),
      ),
    );
  }
}
