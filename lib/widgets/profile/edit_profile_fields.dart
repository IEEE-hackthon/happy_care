import 'package:flutter/material.dart';
import 'package:save_environment/widgets/profile/edit_profile_text_field.dart';

class ProfileFields extends StatelessWidget {
  const ProfileFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BaseTextField(label: 'Full name'),
        SizedBox(height: 16),
        BaseTextField(label: 'Last name'),
        SizedBox(height: 16),
        BaseTextField(label: 'Job'),
        SizedBox(height: 16),
        BaseTextField(label: 'About your plants and animals'),
      ],
    );
  }
}
