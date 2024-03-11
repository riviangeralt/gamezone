import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon({
    super.key,
    required this.iconStr,
  });

  final String iconStr;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconStr,
      height: AppSizes.iconSize,
      width: AppSizes.iconSize,
    );
  }
}
