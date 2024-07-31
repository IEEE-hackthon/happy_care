import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  final double fontSize;
  final Color linkColor;
  final Color textColor;

  const SignUpText({
    super.key,
    required this.fontSize,
    required this.linkColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign Up',
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
