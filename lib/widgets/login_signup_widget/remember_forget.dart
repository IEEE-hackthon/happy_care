import 'package:flutter/material.dart';

class RememberMeAndForgotPassword extends StatelessWidget {
  final double iconSpacing;
  final double fontSize;

  const RememberMeAndForgotPassword({
    super.key,
    required this.iconSpacing,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.check_box_outline_blank_rounded,
              color: Color(0xff717171),
            ),
            SizedBox(width: iconSpacing),
            Text(
              'Remember me',
              style: TextStyle(
                color: const Color(0xff717171),
                fontSize: fontSize,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forget Password?',
            style: TextStyle(
              color: const Color(0xff717171),
              fontSize: fontSize,
            ),
          ),
        ),
      ],
    );
  }
}
