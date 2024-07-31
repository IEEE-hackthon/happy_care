import 'package:flutter/material.dart';

class FullNameTextField extends StatelessWidget {
  const FullNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Full name',
        labelStyle: const TextStyle(
          color: Color(0xff717171),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffE5D0A7),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff99BA60),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
