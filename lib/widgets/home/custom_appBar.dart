import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color borderColor;

  const CustomAppBar({super.key, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const Expanded(
            child: Text(
              'Hi, Ali',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: borderColor, // Border color
                width: 1.5, // Border width
              ),
            ),
            child: const CircleAvatar(
              backgroundImage:
                  NetworkImage("https://avatar.iran.liara.run/public/31"),
              radius: 22,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
