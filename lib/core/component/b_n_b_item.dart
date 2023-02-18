import 'package:flutter/material.dart';
import 'package:social_app_project/core/utils/app_numbers.dart';

BottomNavigationBarItem bNBItem(
        {required IconData iconData, String? label, double? iconSize}) =>
    BottomNavigationBarItem(
      icon: Icon(
        iconData,
        size: iconSize ?? AppNumbers.iconSize,
      ),
      label: label ?? '',
    );
