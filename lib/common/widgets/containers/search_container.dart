import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/icon/svg_icon.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:game_booking_app/utils/constants/image_strings.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.accent,
        border: Border.all(
          width: 1,
          color: AppColors.accent,
        ),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.sm),
        child: Row(
          children: [
            const SvgIcon(
              iconStr: AppImageStrings.searchIcon,
            ),
            const SizedBox(
              width: AppSizes.sm,
            ),
            Text(
              'Search',
              style: Theme.of(context).textTheme.displaySmall!.apply(
                    color: const Color(0xff5B5858),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
