import 'package:flutter/material.dart';
import 'package:save_environment/views/profile/edit_profile_page.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 59,
          backgroundImage:
              NetworkImage("https://avatar.iran.liara.run/public/31"),
        ),
        const SizedBox(width: 16),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ali Alaa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Doctor',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          color: Colors.orange,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const EditProfilePage(),
              ),
            );
          },
          icon: const Icon(Icons.edit, color: Colors.orange),
        ),
      ],
    );
  }
}
