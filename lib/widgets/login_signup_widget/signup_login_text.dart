import 'package:flutter/material.dart';

class SignUpAndLogInText extends StatelessWidget {
  final double fontSize;
  final Color linkColor;
  final Color textColor;
  final String labelOne;
  final String labelTwo;
  final void Function()? onTap;

  const SignUpAndLogInText({
    super.key,
    required this.fontSize,
    required this.linkColor,
    required this.textColor,
    required this.labelOne,
    required this.labelTwo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          labelOne,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            labelTwo,
            style: TextStyle(
              color: linkColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
