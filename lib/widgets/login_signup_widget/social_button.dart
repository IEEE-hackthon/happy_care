import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  final double iconSize;
  final double spacing;

  const SocialButtons({
    super.key,
    required this.iconSize,
    required this.spacing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: Colors.blue[800],
            padding: EdgeInsets.all(iconSize / 2),
          ),
          onPressed: () {},
          child: Icon(
            Icons.facebook,
            color: Colors.white,
            size: iconSize,
          ),
        ),
        SizedBox(width: spacing),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color(0xff717171),
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(iconSize / 2),
          ),
          onPressed: () {},
          child: Image.network(
            'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
            height: iconSize,
            width: iconSize,
          ),
        ),
      ],
    );
  }
}
