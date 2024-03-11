import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/card/game_card.dart';
import 'package:game_booking_app/common/widgets/headings/section_heading.dart';
import 'package:game_booking_app/common/widgets/layout/grid_layout.dart';
import 'package:game_booking_app/features/app/screens/deals/widgets/deals_app_bar.dart';
import 'package:game_booking_app/features/app/screens/home/widgets/home_banner_slider.dart';
import 'package:game_booking_app/features/app/screens/home/widgets/home_tab_sections.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class DealsScreen extends StatelessWidget {
  const DealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DealsAppBar(),
          const Padding(
            padding: EdgeInsets.all(AppSizes.lg),
            child: SectionHeading(
              text: "Hot Deals",
            ),
          ),
          const HomeBannerSlider(),
          Padding(
            padding: const EdgeInsets.all(AppSizes.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Featured',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: AppSizes.lg,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) => Container(
                      width: 160,
                      margin: const EdgeInsets.only(right: 16),
                      child: const GameCard(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.lg * 3,
          ),
          const HomeTabSections(),
          Padding(
            padding: const EdgeInsets.all(AppSizes.lg),
            child: GridLayout(
              itemCount: 10,
              itemBuilder: (context, index) => const GameCard(),
            ),
          )
        ],
      ),
    );
  }
}
