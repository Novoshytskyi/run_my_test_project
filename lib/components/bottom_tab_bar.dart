import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      decoration: const BoxDecoration(
        color: Color(0xFF111016),
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
                colorFilter: const ColorFilter.mode(
                  Color(0xFFFFFFFF),
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/inventory.svg',
                colorFilter: const ColorFilter.mode(
                  Color(0xFFFFFFFF),
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/tabbar_referral-1.svg',
                colorFilter: const ColorFilter.mode(
                  Color(0xFFFFFFFF),
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/tabbar_shop-1.svg',
                colorFilter: const ColorFilter.mode(
                  Color(0xFFFFFFFF),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
