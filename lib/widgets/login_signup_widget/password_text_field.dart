import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, this.label});
  final label;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Color(0xff717171),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffE5D0A7),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff99BA60),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: Icon(
          Icons.visibility_off,
        ),
      ),
    );
  }
}
