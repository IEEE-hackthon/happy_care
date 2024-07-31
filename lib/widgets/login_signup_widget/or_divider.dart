import 'package:flutter/material.dart';

class OrContinueWithDivider extends StatelessWidget {
  final double fontSize;

  const OrContinueWithDivider({
    Key? key,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Color(0xff717171),
              thickness: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Or continue with',
              style: TextStyle(
                color: Color(0xff717171),
                fontSize: fontSize,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Color(0xff717171),
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
