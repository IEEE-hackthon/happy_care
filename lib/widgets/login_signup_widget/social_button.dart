import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  static const double buttonWidth = 64.0;
  static const double buttonHeight = 56.0;
  static const double iconSize = 24.0;
  static const double spacing = 20.0;
  static const double borderWidth = 1.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            color: Colors.blue[800],
            border: Border.all(color: Colors.blue[800]!, width: borderWidth),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.facebook, color: Colors.white),
            tooltip: 'Facebook',
            iconSize: iconSize,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: spacing),
        Container(
          width: buttonWidth,
          height: buttonHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey[400]!, width: borderWidth),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.network(
              'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
              height: iconSize,
              width: iconSize,
            ),
            tooltip: 'Google',
            iconSize: iconSize,
          ),
        ),
      ],
    );
  }
}
