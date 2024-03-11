import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/card/game_card.dart';
import 'package:game_booking_app/common/widgets/headings/section_heading.dart';
import 'package:game_booking_app/common/widgets/layout/grid_layout.dart';
import 'package:game_booking_app/features/app/screens/favourites/widgets/favourites_app_bar.dart';
import 'package:game_booking_app/features/app/screens/home/widgets/home_tab_sections.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FavouritesAppBar(),
          const Padding(
            padding: EdgeInsets.all(AppSizes.lg),
            child: SectionHeading(
              text: "Favourites",
            ),
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
