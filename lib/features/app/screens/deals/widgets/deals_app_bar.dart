import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/appbar/app_bar.dart';
import 'package:game_booking_app/common/widgets/icon/svg_icon.dart';
import 'package:game_booking_app/utils/constants/image_strings.dart';

class DealsAppBar extends StatelessWidget {
  const DealsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'GameZone',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const Row(
            children: [
              SvgIcon(
                iconStr: AppImageStrings.shoppingBagIcon,
              ),
            ],
          )
        ],
      ),
    );
  }
}
