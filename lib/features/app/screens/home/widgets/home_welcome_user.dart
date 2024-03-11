import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class HomeWelcomeUser extends StatelessWidget {
  const HomeWelcomeUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.md,
        horizontal: AppSizes.lg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello,',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .apply(color: AppColors.grey),
          ),
          Text(
            'Aasim Sayyed',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .apply(fontWeightDelta: 4),
          ),
        ],
      ),
    );
  }
}
