import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0xffEFEFEF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -8,
            right: -8,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.heart,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/products/product1.png',
                ),
              ),
              Text(
                'PS5 Digital Edition',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$25.99',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.white,
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff374957).withOpacity(0.2),
                        ),
                      ),
                      child: const Icon(
                        Iconsax.arrow_right_3,
                        size: 16,
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
