import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/colors.dart';

class AppTextFieldTheme {
  AppTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    // contentPadding: const EdgeInsets.symmetric(
    //   vertical: 12,
    //   horizontal: 16,
    // ),
    prefixIconColor: AppColors.grey,
    suffixIconColor: AppColors.grey,
    labelStyle: const TextStyle().copyWith(
      fontSize: 14.0,
      color: AppColors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: 14.0,
      color: AppColors.black,
    ),
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.grey,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.black12,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.black12,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.red,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(24.0),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.orange,
      ),
    ),
  );
}
