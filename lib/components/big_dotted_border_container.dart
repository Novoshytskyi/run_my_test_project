import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:run_my_test_project/colors_constants.dart';

class BigDottedBorderContainer extends StatelessWidget {
  const BigDottedBorderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [4, 8],
      strokeCap: StrokeCap.round,
      color: dottedBorderColor,
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: const Radius.circular(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          height: 88.0,
          width: double.infinity,
          child: Container(
            color: dottedBorderContainerColor,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                //
                Image.asset('assets/images/shoes_pack-01.png'),
                SvgPicture.asset(
                  'assets/icons/add.svg',
                  colorFilter: addIconColorFilter,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
