import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_app_project/core/component/b_n_b_item.dart';
import 'package:social_app_project/core/utils/app_colors.dart';
import 'package:social_app_project/core/utils/app_numbers.dart';
import 'package:social_app_project/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:social_app_project/features/layout/presentation/cubit/layout_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (_, state) {},
      builder: (_, state) {
        LayoutCubit cubit = LayoutCubit.get(context);
        return Scaffold(
          body: cubit.layoutBodyWidgets[cubit.currentIndex],
          bottomNavigationBar: Container(
            height: AppNumbers.bNBHeight.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppNumbers.radius),
                topRight: Radius.circular(AppNumbers.radius),
              ),
            ),
            child: BottomNavigationBar(
              backgroundColor: AppColors.darkColors,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                cubit.changeBNBCurrentIndex(index: index);
              },
              currentIndex: cubit.currentIndex,
              selectedItemColor: AppColors.primaryColors,
              unselectedItemColor: AppColors.whiteColor,
              items: [
                bNBItem(iconData: FontAwesomeIcons.house),
                bNBItem(iconData: FontAwesomeIcons.magnifyingGlass),
                bNBItem(iconData: FontAwesomeIcons.circlePlus),
                bNBItem(iconData: FontAwesomeIcons.heart),
              ],
            ),
          ),
        );
      },
    );
  }
}
