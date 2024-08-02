import 'package:flutter/material.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          label,
        ),
      ),
    );
  }
}
