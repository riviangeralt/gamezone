import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(
        color: AppColors.primary,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.sm,
        horizontal: AppSizes.lg,
      ),
      textStyle: const TextStyle(
        fontSize: 12.0,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
    ),
  );
}
