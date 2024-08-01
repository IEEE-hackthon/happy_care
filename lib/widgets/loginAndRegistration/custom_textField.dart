import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.icon,
  });

  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon? icon;

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
        fillColor: const Color(0xffe7e7e7),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff99BA60),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff99BA60),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: icon,
      ),
    );
  }
}
