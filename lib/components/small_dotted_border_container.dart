import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:run_my_test_project/colors_constants.dart';

class SmallDottedBorderContainer extends StatelessWidget {
  const SmallDottedBorderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [7, 6],
      strokeCap: StrokeCap.round,
      color: dottedBorderColor,
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: const Radius.circular(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          height: 58.0,
          width: 75.0,
          child: Container(
            color: dottedBorderContainerColor,
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/add.svg',
                colorFilter: addIconColorFilter,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
