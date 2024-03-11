import 'package:flutter/material.dart';
import 'package:game_booking_app/navigation_menu.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:game_booking_app/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      color: AppColors.primary,
      home: const NavigationMenu(),
    );
  }
}
