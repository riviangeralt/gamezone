import 'package:flutter/material.dart';
import 'package:game_booking_app/common/widgets/headings/section_heading.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  static const List<Map<String, dynamic>> options = [
    {
      "icon": Iconsax.moon,
      "title": "Dark Mode",
    },
    {
      "icon": Iconsax.box,
      "title": "Orders",
    },
    {
      "icon": Iconsax.clock,
      "title": "Purchase History",
    },
    {
      "icon": Iconsax.card,
      "title": "Payment Methods",
    },
    {
      "icon": Iconsax.eye_slash,
      "title": "Privacy",
    },
    {
      "icon": Iconsax.user,
      "title": "Personal Info",
    },
    {
      "icon": Iconsax.gift,
      "title": "Rewards",
    },
    {
      "icon": Iconsax.setting,
      "title": "Settings",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            const SectionHeading(text: "Account"),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, index) => ListTile(
                leading: Icon(options[index]['icon']),
                title: Text(options[index]['title']),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
