import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_project/core/component/custom_container.dart';
import 'package:social_app_project/core/component/custom_icon.dart';
import 'package:social_app_project/core/utils/app_colors.dart';
import 'package:social_app_project/core/utils/app_numbers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePostWidget extends StatelessWidget {
  const HomePostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.greyColor,
            AppColors.whiteColor,
            AppColors.whiteColor,
            AppColors.whiteColor,
            AppColors.whiteColor,
            AppColors.whiteColor,
          ]).createShader(rect),
      child: Stack(
        children: [
          //post background Image
          CustomContainer(
            height: AppNumbers.postContainerHeight.h,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              vertical: AppNumbers.margin / 2,
            ),
            borderRadius: AppNumbers.radius * 2,
            image: 'profile2',
          ),
          //popUpMenu
          Positioned(
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppNumbers.padding * 0.1,
                vertical: AppNumbers.padding,
              ),
              child: PopupMenuButton(
                iconSize: 35.0,
                position: PopupMenuPosition.under,
                icon: const Icon(
                  Icons.more_vert,
                  color: AppColors.whiteColor,
                ),
                onSelected: (val) {},
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(child: Text('bilal')),
                    PopupMenuItem(child: Text('bilal')),
                  ];
                },
              ),
            ),
          ),
          //profileImage && ProfileImage
          Positioned(
            left: 0.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppNumbers.padding,
                    vertical: AppNumbers.padding * 1.5,
                  ),
                  child: CustomContainer(
                    height: 32.0.h,
                    width: 35.0.w,
                    borderRadius: AppNumbers.radius / 1.5,
                    image: 'profile6',
                    gradientBorder: false,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'bilal',
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                    Text(
                      'cairo, egypt',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.whiteColor.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //social interAction bar(Fav & comment & share & save)
          Positioned(
            bottom: 0.0,
            left: 25.0,
            child: CustomContainer(
              height: 45.0.h,
              width: 300,
              containerColor: AppColors.whiteColor.withOpacity(0.3),
              margin: const EdgeInsets.symmetric(vertical: AppNumbers.margin * 2.0),
              borderRadius: AppNumbers.radius * 2,
              widget: ClipRRect(
                borderRadius: BorderRadius.circular(AppNumbers.radius * 2),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 20.0,
                    sigmaY: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: AppNumbers.padding / 1.5),
                        child: Row(
                          children: [
                            const CustomIcon(
                              iconData: FontAwesomeIcons.heart,
                              size: 25.0,
                              color: AppColors.darkColors,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: AppNumbers.padding / 4),
                              child: Text(
                                '52k...',
                                style: TextStyle(
                                  fontSize: 14.0.sp,
                                  color: AppColors.darkColors,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Row(
                        children: [
                          const CustomIcon(
                            iconData: FontAwesomeIcons.comment,
                            size: 25.0,
                            color: AppColors.darkColors,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: AppNumbers.padding / 4),
                            child: Text(
                              '1.4k...',
                              style: TextStyle(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.darkColors,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      const CustomIcon(
                        iconData: FontAwesomeIcons.paperPlane,
                        size: 25.0,
                        color: AppColors.darkColors,
                      ),
                      const Expanded(child: SizedBox()),
                      const Padding(
                        padding: EdgeInsets.only(right: AppNumbers.padding / 1.5),
                        child: CustomIcon(
                          iconData: FontAwesomeIcons.bookmark,
                          size: 25.0,
                          color: AppColors.darkColors,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
