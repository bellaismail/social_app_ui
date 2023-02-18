import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_project/core/utils/app_strings.dart';
import 'package:social_app_project/features/authentcation/presentation/cubit/auth_cubit.dart';
import 'package:social_app_project/features/authentcation/presentation/cubit/auth_states.dart';
import 'package:social_app_project/features/authentcation/presentation/widgets/signin_bottom_container.dart';
import 'package:social_app_project/features/authentcation/presentation/widgets/signup_bottom_container.dart';
import 'package:social_app_project/features/authentcation/presentation/widgets/toggle.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFD),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          AuthCubit cubit = AuthCubit.get(context);
          return Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/login_image_png.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const ToggleWidget(),
              cubit.toggle == AppStrings.signInButtomText
                  ? LoginBottomContainer(cubit: cubit)
                  : const SignUpBottomContainer(),
            ],
          );
        },
      ),
    );
  }
}
