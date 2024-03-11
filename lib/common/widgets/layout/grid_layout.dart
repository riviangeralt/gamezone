import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 190,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSizes.lg,
        crossAxisSpacing: AppSizes.lg,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
