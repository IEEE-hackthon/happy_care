import 'package:flutter/material.dart';

import '../../views/profile/profile_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color borderColor;

  const CustomAppBar({super.key, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hi',
                    style: TextStyle(
                      color: borderColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: ', Ali',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(themeColor: borderColor),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: borderColor,
                  width: 1.5,
                ),
              ),
              child: const CircleAvatar(
                backgroundImage:
                    NetworkImage("https://avatar.iran.liara.run/public/31"),
                radius: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
