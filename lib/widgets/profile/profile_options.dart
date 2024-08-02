import 'package:flutter/material.dart';
import 'package:save_environment/views/profile/edit_profile_page.dart';
import 'package:save_environment/widgets/profile/expansion_tile.dart';
import 'package:save_environment/widgets/profile/profile_option.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOption(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EditProfilePage(),
              ),
            );
          },
          title: 'Personal Info',
          icon: Icons.insert_drive_file_outlined,
        ),
        ProfileOption(
          title: 'Reviews',
          icon: Icons.reviews_outlined,
        ),
        ProfileOption(
          title: 'My Plants',
          icon: Icons.local_florist,
        ),
        ProfileOption(
          title: 'My Animals',
          icon: Icons.pets,
        ),
        ProfileOption(
          title: 'Favorites',
          icon: Icons.favorite_border,
        ),
        ProfileOption(
          title: 'Help & Support',
          icon: Icons.help_outline,
        ),
        SizedBox(height: 8),
        ExpansionTileEdit(),
        SizedBox(height: 8),
        ProfileOption(
          title: 'Log out',
          icon: Icons.login_outlined,
          color: Color(0xffD2776E),
        ),
      ],
    );
  }
}
