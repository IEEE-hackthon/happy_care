import 'package:flutter/material.dart';

class TitleName extends StatelessWidget {
  const TitleName({super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          iconSize: 24,
          icon: ImageIcon(
            AssetImage(imagePath),
            size: 24,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        if (title != null)
          Text(
            title!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        const Spacer(),
        const Icon(Icons.more_horiz)
      ],
    );
  }
}
