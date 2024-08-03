import 'package:flutter/material.dart';
import 'package:save_environment/views/choose_page.dart';
import 'package:save_environment/views/profile/edit_profile_page.dart';
import 'package:save_environment/widgets/profile/expansion_tile.dart';
import 'package:save_environment/widgets/profile/profile_option.dart';

import '../../views/login_signup_pages/login_page.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOption(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EditProfilePage(
                  color: color,
                ),
              ),
            );
          },
          title: 'Personal Info',
          icon: Icons.insert_drive_file_outlined,
        ),
        ProfileOption(
          title: 'Switch Home',
          icon: Icons.swap_calls_rounded,
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const ChoosePage(),
              ),
              (route) => false,
            );
          },
        ),
        const ProfileOption(
          title: 'My Plants',
          icon: Icons.local_florist,
        ),
        const ProfileOption(
          title: 'My Animals',
          icon: Icons.pets,
        ),
        const ProfileOption(
          title: 'Favorites',
          icon: Icons.favorite_border,
        ),
        const ProfileOption(
          title: 'Help & Support',
          icon: Icons.help_outline,
        ),
        const SizedBox(height: 8),
        const ExpansionTileEdit(),
        const SizedBox(height: 8),
        ProfileOption(
          title: 'Log out',
          icon: Icons.login_outlined,
          color: const Color(0xffE5736C),
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
              (route) => false,
            );
          },
        ),
      ],
    );
  }
}
