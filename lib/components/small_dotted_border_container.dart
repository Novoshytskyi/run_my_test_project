import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';

class SmallDottedBorderContainer extends StatelessWidget {
  const SmallDottedBorderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [4, 8],
      strokeCap: StrokeCap.round,
      color: const Color(0xFF37616F),
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: const Radius.circular(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          height: 58.0,
          width: 75.0,
          child: Center(
            child: SvgPicture.asset(
              'assets/icons/add.svg',
              colorFilter: const ColorFilter.mode(
                Color(0xFF1DB9DD),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
