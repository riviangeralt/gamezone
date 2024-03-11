import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/card/game_card.dart';
import 'package:game_booking_app/common/widgets/layout/grid_layout.dart';
import 'package:game_booking_app/features/app/screens/home/widgets/home_app_bar.dart';
import 'package:game_booking_app/features/app/screens/home/widgets/home_banner_slider.dart';
import 'package:game_booking_app/features/app/screens/home/widgets/home_tab_sections.dart';
import 'package:game_booking_app/features/app/screens/home/widgets/home_welcome_user.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppBar(),
          const SizedBox(
            height: AppSizes.lg,
          ),
          const HomeWelcomeUser(),
          const SizedBox(
            height: AppSizes.lg,
          ),
          const HomeBannerSlider(),
          const SizedBox(
            height: AppSizes.lg,
          ),
          const HomeTabSections(),
          Padding(
            padding: const EdgeInsets.all(AppSizes.lg),
            child: GridLayout(
              itemCount: 6,
              itemBuilder: (context, index) => const GameCard(),
            ),
          )
        ],
      ),
    );
  }
}
