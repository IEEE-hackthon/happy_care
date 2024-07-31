import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email',
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
        suffixIcon: const Icon(
          Icons.email_outlined,
        ),
      ),
    );
  }
}
