import 'package:flutter/material.dart';
import 'package:game_booking_app/features/app/screens/account/account.dart';
import 'package:game_booking_app/features/app/screens/deals/deals.dart';
import 'package:game_booking_app/features/app/screens/favourites/favourites.dart';
import 'package:game_booking_app/features/app/screens/home/home.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  static const List<Map<String, IconData>> icons = [
    {
      "baseIcon": Iconsax.home,
      "selectedIcon": Iconsax.home_15,
    },
    {
      "baseIcon": Iconsax.heart,
      "selectedIcon": Iconsax.heart5,
    },
    {
      "baseIcon": Iconsax.discount_circle,
      "selectedIcon": Iconsax.discount_circle5,
    },
    {
      "baseIcon": Iconsax.user,
      "selectedIcon": Iconsax.user,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              width: 1,
              color: AppColors.accent,
            ),
          ),
        ),
        child: Row(
          children: icons.asMap().entries.map((entry) {
            return Obx(
              () => Expanded(
                child: IconButton(
                  color: AppColors.black,
                  isSelected: controller.selectedIndex.value == entry.key,
                  selectedIcon: Icon(
                    entry.value['selectedIcon'],
                    size: 24,
                  ),
                  icon: Icon(
                    entry.value['baseIcon'],
                    size: 24,
                  ),
                  onPressed: () => controller.updateSelectedIndex(entry.key),
                ),
              ),
            );
          }).toList(),
        ),
      ),
      body: Obx(() => controller.con),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screens = const [
    HomeScreen(),
    FavouritesScreen(),
    DealsScreen(),
    AccountScreen(),
  ];

  void updateSelectedIndex(int index) => selectedIndex.value = index;

  Widget get con => screens[selectedIndex.value];
}
