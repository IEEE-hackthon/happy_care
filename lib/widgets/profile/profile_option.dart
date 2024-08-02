import 'package:flutter/material.dart';
import 'package:save_environment/widgets/profile/custome_list_tile.dart';

class ProfileOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;

  const ProfileOption({
    super.key,
    required this.title,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: CustomListTile(
        editTitle: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
            color: color ?? Colors.black,
          ),
        ),
        leadingIcon: Icon(icon, color: color ?? Colors.black),
      ),
    );
  }
}
