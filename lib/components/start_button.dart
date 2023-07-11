import 'package:flutter/material.dart';
import 'package:run_my_test_project/colors_constants.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    required this.text,
    required this.onPress,
  });

  final String text;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(6.0),
        backgroundColor: MaterialStateProperty.all(startButtonBackgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
    );
  }
}
