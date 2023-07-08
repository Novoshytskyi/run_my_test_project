import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconWithShadowButton extends StatelessWidget {
  const SvgIconWithShadowButton({
    Key? key,
    required this.icon,
    required this.onPress,
    required this.shadowColor,
  }) : super(key: key);

  final SvgPicture icon;
  final VoidCallback onPress;
  final Color? shadowColor;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        elevation: 15,
        shadowColor: shadowColor,
      ),
      icon: icon,
    );
  }
}
