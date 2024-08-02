import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: const BorderSide(
          width: 3,
          color: Colors.white,
        ),
      ),
      backgroundColor: color,
      elevation: 0,
      child: const Icon(Icons.qr_code_scanner, size: 30, color: Colors.white),
    );
  }
}
