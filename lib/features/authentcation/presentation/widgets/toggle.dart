import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_project/core/media_query_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_project/features/authentcation/presentation/cubit/auth_states.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../cubit/auth_cubit.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      top: (MediaQueryValues(context).height / 2) - 50,
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          AuthCubit cubit = AuthCubit.get(context);
          return Container(
            height: 50.h,
            width: 200.w,
            color: AppColors.darkColors,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if (cubit.toggle != AppStrings.signInButtomText) {
                      cubit.toggleToSignIn();
                    }
                  },
                  child: Text(
                    AppStrings.signInButtomText,
                    style: cubit.toggle == AppStrings.signInButtomText
                        ? Theme.of(context).textTheme.bodyLarge
                        : Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if (cubit.toggle != AppStrings.signUp) {
                      cubit.toggleToSignup();
                    }
                  },
                  child: Text(
                    AppStrings.signUp,
                    style: cubit.toggle == AppStrings.signUp
                        ? Theme.of(context).textTheme.bodyLarge
                        : Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
