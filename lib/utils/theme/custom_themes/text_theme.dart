import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    ),
    displayMedium: const TextStyle().copyWith(
      fontSize: 21.0,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    ),
    displaySmall: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.normal,
      color: AppColors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: AppColors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: AppColors.black,
    ),
  );
}
