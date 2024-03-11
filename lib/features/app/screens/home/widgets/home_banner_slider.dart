import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/banner/banner.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:game_booking_app/utils/constants/image_strings.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class HomeBannerSlider extends StatelessWidget {
  const HomeBannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.md,
        horizontal: AppSizes.lg,
      ),
      child: Column(
        children: [
          // Banner List
          AppBanner(
            title: '20% OFF',
            subtitle: 'on gaming accessoties',
            cta: 'See discounts',
            onPressed: () {},
            imageUrl: AppImageStrings.imageBanner1,
            imageTopPos: -80,
            imageRightPos: -30,
          ),
          const SizedBox(
            height: AppSizes.lg,
          ),
          // Dot Navigation
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: 10,
                  width: double.infinity,
                  child: Center(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        4,
                        (index) => Container(
                          width: index == 1 ? 30 : 10,
                          height: 10,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: index != 1
                                ? const Color(0xFFBFBFBF)
                                : AppColors.warning,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
