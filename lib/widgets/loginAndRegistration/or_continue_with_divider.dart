import 'package:flutter/material.dart';

class OrContinueWithDivider extends StatelessWidget {
  static const dividerColor =
      Color(0xff717171); // Or use Theme.of(context).dividerColor
  final double fontSize;

  const OrContinueWithDivider({
    super.key,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(color: dividerColor, thickness: 1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Or continue with',
            style: TextStyle(color: dividerColor, fontSize: fontSize),
          ),
        ),
        const Expanded(
          child: Divider(color: dividerColor, thickness: 1),
        ),
      ],
    );
  }
}
