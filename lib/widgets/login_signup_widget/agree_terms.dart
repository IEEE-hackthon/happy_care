import 'package:flutter/material.dart';

class AgreeTerms extends StatelessWidget {
  final double iconSpacing;
  final double fontSize;
  const AgreeTerms({
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
              'I agree to the terms of use',
              style: TextStyle(
                color: const Color(0xff717171),
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
