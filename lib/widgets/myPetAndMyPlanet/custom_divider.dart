import 'package:flutter/material.dart';

class Customdivider extends StatelessWidget {
  const Customdivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 90,
        right: 17,
      ),
      child: Divider(
        thickness: 1,
        color: Colors.grey,
      ),
    );
  }
}
