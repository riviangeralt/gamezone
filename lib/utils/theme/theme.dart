import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:game_booking_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:game_booking_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:game_booking_app/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'PlusJakartaSans',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.lightTextTheme,
    // chipTheme: CustomChipTheme.lightChipTheme,
    // checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    // appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    // bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    // outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  );
}
