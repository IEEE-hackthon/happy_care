import 'package:flutter/material.dart';

class OrContinueWithDivider extends StatelessWidget {
  final double fontSize;

  const OrContinueWithDivider({
    super.key,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
              color: Color(0xff717171),
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Or continue with',
              style: TextStyle(
                color: const Color(0xff717171),
                fontSize: fontSize,
              ),
            ),
          ),
          const Expanded(
            child: Divider(
              color: Color(0xff717171),
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
