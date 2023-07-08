import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:run_my_test_project/colors_constants.dart';

class SvgIconWithShadowButton extends StatelessWidget {
  const SvgIconWithShadowButton({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final SvgPicture icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        elevation: 15,
        shadowColor: svgIconWithShadowButtonShadowColor,
      ),
      icon: icon,
    );
  }
}
