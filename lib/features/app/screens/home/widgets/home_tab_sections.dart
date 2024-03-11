import 'package:flutter/material.dart';
import 'package:game_booking_app/utils/constants/colors.dart';
import 'package:game_booking_app/utils/constants/sizes.dart';

class HomeTabSections extends StatefulWidget {
  const HomeTabSections({super.key});
  static const List tabs = [
    "All",
    "Consoles",
    'Controllers',
    'Games',
    'Accessories'
  ];

  @override
  State<HomeTabSections> createState() => _HomeTabSectionsState();
}

class _HomeTabSectionsState extends State<HomeTabSections> {
  static int _selectedInd = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            // width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: AppSizes.lg),
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    HomeTabSections.tabs.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedInd = index;
                        });
                      },
                      child: Container(
                        // width: 50,
                        constraints: const BoxConstraints(
                          minWidth: 60,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 12.0,
                        ),
                        margin: EdgeInsets.only(
                          right:
                              index == HomeTabSections.tabs.length - 1 ? 10 : 0,
                        ),
                        decoration: BoxDecoration(
                          color: index == _selectedInd
                              ? AppColors.black
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            HomeTabSections.tabs[index],
                            style:
                                Theme.of(context).textTheme.displaySmall!.apply(
                                      color: index == _selectedInd
                                          ? AppColors.white
                                          : AppColors.lightGrey,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
