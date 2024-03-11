import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kToolbarHeight,
        left: AppSizes.md,
        right: AppSizes.md,
      ),
      child: Container(
        height: 50,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
