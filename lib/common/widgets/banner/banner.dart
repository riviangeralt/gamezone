import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({
    super.key,
    required this.title,
    required this.subtitle,
    required this.cta,
    this.onPressed,
    this.backgroundColor = AppColors.warning,
    required this.imageUrl,
    this.imageTopPos = 0.0,
    this.imageRightPos = 0.0,
  });

  final String title;
  final String subtitle;
  final String cta;
  final String imageUrl;
  final double? imageTopPos;
  final double? imageRightPos;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.lg,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: AppSizes.md,
                    ),
                    ElevatedButton(
                      onPressed: onPressed,
                      child: Text(cta),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: imageTopPos,
          right: imageRightPos,
          child: Image(
            image: AssetImage(imageUrl),
            width: 250,
            height: 250,
          ),
        )
      ],
    );
  }
}
