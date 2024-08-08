import 'package:flutter/material.dart';

import '../../views/scan_page/scan_page.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ScanPage()),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.5),
          side: const BorderSide(
            width: 3,
            color: Colors.white,
          ),
        ),
        backgroundColor: color,
        elevation: 0,
        child: const Icon(Icons.qr_code_scanner, size: 30, color: Colors.white),
      ),
    );
  }
}
