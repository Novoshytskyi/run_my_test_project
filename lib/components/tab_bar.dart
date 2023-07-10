import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run_my_test_project/colors_constants.dart';

class TabBarNew extends StatefulWidget {
  const TabBarNew({Key? key}) : super(key: key);

  @override
  State<TabBarNew> createState() => _TabBarNewState();
}

class _TabBarNewState extends State<TabBarNew> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      child: DefaultTabController(
        length: 4,
        child: Container(
          height: 64.0,
          decoration: const BoxDecoration(
            color: bottomTabBarColor,
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          child: TabBar(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            dividerColor: Colors.transparent,
            indicatorColor: bottomTabBarColor,
            tabs: [
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/tabbar_main.svg',
                  colorFilter: selectedIndex == 0
                      ? iconColorFilter
                      : unselectedIconColorFilter,
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/tabbar_inventory.svg',
                  colorFilter: selectedIndex == 1
                      ? iconColorFilter
                      : unselectedIconColorFilter,
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/tabbar_referral.svg',
                  colorFilter: selectedIndex == 2
                      ? iconColorFilter
                      : unselectedIconColorFilter,
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/tabbar_shop.svg',
                  colorFilter: selectedIndex == 3
                      ? iconColorFilter
                      : unselectedIconColorFilter,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
