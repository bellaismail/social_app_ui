import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_project/core/component/custom_container.dart';
import 'package:social_app_project/core/component/custom_icon.dart';
import 'package:social_app_project/core/utils/app_colors.dart';
import 'package:social_app_project/core/utils/app_numbers.dart';
import 'package:social_app_project/features/home/presentation/cubit/home_cubit.dart';
import 'package:social_app_project/features/home/presentation/cubit/home_states.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          HomeCubit cubit = HomeCubit.get(context);
          return ShaderMask(
            shaderCallback: (rect)=>const LinearGradient(
              colors: [
                AppColors.whiteColor,
                AppColors.whiteColor,
                AppColors.whiteColor,
                AppColors.darkColors,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(rect),
            child: SizedBox(
              width: double.infinity,
              height: 75.0.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const _StoryColumn(
                      accountName: 'your story',
                      widget: CustomIcon(
                        iconData: Icons.add,
                        size: 40.0,
                        color: AppColors.primaryColors,
                      ),
                      borderColor: AppColors.whiteColor,
                    );
                  }
                  return _StoryColumn(
                    accountName: cubit.profileList[index].profileName,
                    storyImage: cubit.profileList[index].storyImage,
                    gradientBorder: true,
                    gradientBorderColors:  const <Color>[
                      AppColors.primaryColors,
                      AppColors.purple,
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _StoryColumn extends StatelessWidget {
  const _StoryColumn({
    Key? key,
    required this.accountName,
    this.storyImage,
    this.widget,
    this.gradientBorder,
    this.gradientBorderColors,
    this.borderColor,
  }) : super(key: key);

  final String accountName;
  final String? storyImage;
  final Widget? widget;
  final bool? gradientBorder;
  final List<Color>? gradientBorderColors;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppNumbers.margin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomContainer(
            width: 55.0.w,
            height: 50.0.h,
            borderRadius: AppNumbers.radius * 1.4,
            borderColor: borderColor,
            widget: widget,
            image: storyImage,
            gradientBorder: gradientBorder,
            gradientBorderColors: gradientBorderColors,
          ),
          const Expanded(child: SizedBox()),
          Text(
            accountName,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
