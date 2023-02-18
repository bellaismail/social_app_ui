import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_project/config/routes/generate_routes.dart';
import 'package:social_app_project/config/themes/defaulf_theme.dart';
import 'dart:math';
import 'config/bloc_observer/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: ((context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: defaultTheme,
          onGenerateRoute: GenerateRouteApp.generateRouteFun,
        );
      }),
    );
  }
}
