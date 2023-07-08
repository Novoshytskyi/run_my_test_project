import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run_my_test_project/colors_constants.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      decoration: const BoxDecoration(
        color: bottomTabBarColor,
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2.0,
          horizontal: 22.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/tabbar_main.svg',
                colorFilter: iconColorFilter,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/inventory.svg',
                colorFilter: iconColorFilter,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/tabbar_referral-1.svg',
                colorFilter: iconColorFilter,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/tabbar_shop-1.svg',
                colorFilter: iconColorFilter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
