import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegistrationLabel extends StatelessWidget {
  final String prefixText;
  final String linkText;
  final void Function()? onTap;

  const RegistrationLabel({
    super.key,
    required this.prefixText,
    required this.linkText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: prefixText,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xff717171),
        ),
        children: [
          TextSpan(
            text: linkText,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xff8fba52),
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
