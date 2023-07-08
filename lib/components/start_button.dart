import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.onPress,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(4.0),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
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
              style: TextStyle(
                color: textColor,
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
