import 'package:flutter/material.dart';

class ImageConfirm extends StatelessWidget {
  const ImageConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/login/kindpng_2652076.png',
        height: 170,
        width: 170,
      ),
    );
  }
}
