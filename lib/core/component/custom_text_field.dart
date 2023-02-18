import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors.dart';
import '../utils/app_numbers.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hint,
    required this.label,
    required this.keyBoardType,
    this.obscureText,
  });

  final String hint;
  final String label;
  final TextInputType keyBoardType;
  final bool? obscureText;

  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.displaySmall,
      keyboardType: keyBoardType,
      obscureText: obscureText ?? false,
      obscuringCharacter: '*',
      focusNode: myFocusNode,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.whiteColor),
        labelText: label,
        labelStyle: TextStyle(
          color: myFocusNode.hasFocus ? AppColors.primaryColors : Colors.grey,
          // color: myFocusNode.hasFocus ? Colors.blue : Colors.black
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppNumbers.radius),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppNumbers.radius),
          borderSide: const BorderSide(
            color: AppColors.primaryColors,
          ),
        ),
      ),
    );
  }
}
