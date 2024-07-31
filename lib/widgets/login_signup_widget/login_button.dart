import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final double height;
  final double fontSize;
  final Color backgroundColor;
  final Color textColor;

  const LoginButton({
    super.key,
    required this.height,
    required this.fontSize,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        minimumSize: Size(double.infinity, height),
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: height / 3),
      ),
      onPressed: () {},
      child: Text(
        'Log In',
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
