import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_project/config/routes/routes_name.dart';
import 'package:social_app_project/features/authentcation/presentation/cubit/auth_cubit.dart';
import 'package:social_app_project/features/authentcation/presentation/screens/login_screen.dart';
import 'package:social_app_project/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:social_app_project/features/layout/presentation/screens/layout_screen.dart';

class GenerateRouteApp {
  // RouteSettings
  static Route? generateRouteFun(RouteSettings settings) {
    String? routeName = settings.name;
    switch (routeName) {
      case RoutesName.loginScreenName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AuthCubit>.value(
            value: AuthCubit(),
            // create: (_) => AuthCubit(),
            child: const LoginScreen(),
          ),
        );
      case RoutesName.layoutScreenName:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LayoutCubit>(
            create: (_) => LayoutCubit(),
            child: const LayoutScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AuthCubit>(
            create: (_) => AuthCubit(),
            child: const LoginScreen(),
          ),
        );
    }
  }
}
