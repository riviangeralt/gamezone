import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/appbar/app_bar.dart';
import 'package:game_booking_app/common/widgets/containers/search_container.dart';
import 'package:game_booking_app/common/widgets/icon/svg_icon.dart';
import 'package:game_booking_app/utils/constants/image_strings.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: SearchContainer(),
          ),
          SizedBox(
            width: AppSizes.lg,
          ),
          SvgIcon(
            iconStr: AppImageStrings.shoppingBagIcon,
          ),
        ],
      ),
    );
  }
}
