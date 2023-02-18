import 'package:flutter/material.dart';
import 'package:social_app_project/core/component/custom_icon.dart';
import 'package:social_app_project/core/utils/app_colors.dart';
import 'package:social_app_project/core/utils/app_numbers.dart';
import 'package:social_app_project/features/home/presentation/widgets/home_post_widget.dart';
import 'package:social_app_project/features/home/presentation/widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: CustomIcon(iconData: Icons.camera_alt_outlined),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CustomIcon(iconData: Icons.email_outlined),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const StoryWidget(),
              Expanded(
                child: ShaderMask(
                  shaderCallback: (rect) => const LinearGradient(
                     begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.whiteColor,
                        AppColors.whiteColor,
                        AppColors.whiteColor,
                    AppColors.greyColor,
                  ]).createShader(rect),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: AppNumbers.margin / 1.2,
                      vertical: AppNumbers.margin / 2,
                    ),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const HomePostWidget();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
