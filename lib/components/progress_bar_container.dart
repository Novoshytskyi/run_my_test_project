import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:run_my_test_project/colors_constants.dart';

class ProgressBarContainer extends StatelessWidget {
  const ProgressBarContainer({
    super.key,
    required this.icon,
    required this.text,
  });

  final SvgPicture icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        height: 32.0,
        decoration: const BoxDecoration(
          color: progressBarContainerColor,
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
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
                  color: mainTextColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Avenir',
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
