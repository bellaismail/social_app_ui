import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:social_app_project/core/component/custom_text_field.dart';
import 'package:social_app_project/core/media_query_values.dart';
import 'package:social_app_project/core/utils/app_numbers.dart';
import 'package:social_app_project/core/utils/app_strings.dart';
import 'package:social_app_project/features/authentcation/presentation/cubit/auth_cubit.dart';

import '../../../../core/utils/app_colors.dart';

class LoginBottomContainer extends StatelessWidget {
  const LoginBottomContainer({
    super.key,
    required this.cubit,
  });

  final AuthCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      child: Container(
        width: MediaQueryValues(context).width,
        height: MediaQueryValues(context).height / 2,
        padding: const EdgeInsets.only(
          right: AppNumbers.padding * 2,
          left: AppNumbers.padding * 2,
        ),
        decoration: const BoxDecoration(
          color: AppColors.darkColors,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(AppNumbers.radius),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInRight(
              delay: const Duration(milliseconds: 100),
              duration: const Duration(seconds: 1),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.singInText,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    TextSpan(
                      text: AppStrings.yoyoText,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQueryValues(context).height * .05,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 300),
              duration: const Duration(milliseconds: 800),
              child: CustomTextField(
                hint: AppStrings.emailHint,
                label: AppStrings.emailLabel,
                keyBoardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: MediaQueryValues(context).height * .02,
            ),
            FadeInRight(
              delay: const Duration(milliseconds: 500),
              duration: const Duration(milliseconds: 600),
              child: CustomTextField(
                hint: AppStrings.passHint,
                label: AppStrings.passlabel,
                keyBoardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            SizedBox(
              height: MediaQueryValues(context).height * .05,
            ),
            cubit.signInFunStates == SignInFunStates.WAITING
                ? Center(
                    child: SpinKitFadingCircle(
                      itemBuilder: (BuildContext context, int index) {
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            color: index.isEven
                                ? AppColors.primaryColors
                                : AppColors.whiteColor,
                          ),
                        );
                      },
                    ),
                  )
                : FadeInRight(
                    delay: const Duration(milliseconds: 700),
                    duration: const Duration(milliseconds: 400),
                    child: SizedBox(
                      width: 130.w,
                      height: 50.h,
                      child: ElevatedButton(
                        onPressed: () {
                          cubit.signInFun(context);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              AppColors.primaryColors),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(AppNumbers.radius),
                            ),
                          ),
                        ),
                        child: Text(
                          AppStrings.signInButtomText,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
