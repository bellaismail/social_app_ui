import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:social_app_project/core/utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    this.width,
    this.height,
    this.margin,
    this.borderColor,
    this.borderRadius,
    this.widget,
    this.image,
    this.containerColor,
    this.gradientBorder,
    this.gradientBorderColors,
  }) : super(key: key);

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Color? borderColor;
  final double? borderRadius;
  final Widget? widget;
  final String? image;
  final Color? containerColor;
  final bool? gradientBorder;
  final List<Color>? gradientBorderColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      decoration: widget != null
          ? null
          : BoxDecoration(
              color: gradientBorder == true? AppColors.darkColors:null,
              borderRadius: borderRadius == null
                  ? null
                  : BorderRadius.circular(borderRadius! * 1.2),
              border: gradientBorder == true
                  ? GradientBoxBorder(
                      gradient: LinearGradient(colors: gradientBorderColors!),
                      width: 2.3,
                    )
                  : null,
            ),
      child: Container(
        width: width,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
          color: containerColor,
          border: borderColor == null
              ? null
              : Border.all(
                  color: borderColor!,
                  width: 0.5,
                ),
          borderRadius: borderRadius == null
              ? null
              : BorderRadius.circular(borderRadius!),
          image: image == null
              ? null
              : DecorationImage(
                  image: AssetImage('assets/profile_images/$image.png'),
            fit: BoxFit.cover,
                ),
        ),
        child: widget,
      ),
    );
  }
}
