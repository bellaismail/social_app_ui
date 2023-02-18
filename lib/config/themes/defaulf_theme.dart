import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app_project/core/utils/app_colors.dart';

ThemeData get defaultTheme => ThemeData(
      primaryColor: AppColors.primaryColors,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.aBeeZee(
          fontSize: 20.0.sp,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w800,
        ),
        displaySmall: GoogleFonts.aBeeZee(
          fontSize: 16.0.sp,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w300,
        ),
        displayMedium: GoogleFonts.aBeeZee(
          fontSize: 14.0.sp,
          color: AppColors.greyColor,
          fontWeight: FontWeight.w300,
        ),
        bodyLarge: GoogleFonts.aBeeZee(
          fontSize: 22.0.sp,
          color: AppColors.primaryColors,
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: GoogleFonts.aBeeZee(
          fontSize: 16.0.sp,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w300,
        ),
        bodySmall: GoogleFonts.rubik(
          fontSize: 12.0.sp,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w300,
        ),
      ),
  scaffoldBackgroundColor: AppColors.darkColors,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkColors,
    elevation: 0.0,

    iconTheme: IconThemeData(color: AppColors.whiteColor),
  ),
    );
