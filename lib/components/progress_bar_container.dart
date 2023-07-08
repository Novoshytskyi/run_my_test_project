import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgressBarContainer extends StatelessWidget {
  const ProgressBarContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  final SvgPicture icon;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2.0,
          horizontal: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            Text(
              text,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 16.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'Avenir',
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
