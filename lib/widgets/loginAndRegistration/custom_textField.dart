import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.icon,
    required this.fillColor,
    required this.borderColor,
  });

  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon? icon;
  final Color fillColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Color(0xff717171),
        ),
        filled: true,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: icon,
      ),
    );
  }
}
