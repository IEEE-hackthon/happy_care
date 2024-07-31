import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final double fontSize;
  final Color color;
  final String label;

  const WelcomeText({
    Key? key,
    required this.fontSize,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}
