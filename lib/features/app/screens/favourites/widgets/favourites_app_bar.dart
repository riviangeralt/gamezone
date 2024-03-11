import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/appbar/app_bar.dart';
import 'package:game_booking_app/common/widgets/icon/svg_icon.dart';
import 'package:game_booking_app/utils/constants/image_strings.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class FavouritesAppBar extends StatelessWidget {
  const FavouritesAppBar({super.key});

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
                iconStr: AppImageStrings.searchIcon,
              ),
              SizedBox(
                width: AppSizes.md,
              ),
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
