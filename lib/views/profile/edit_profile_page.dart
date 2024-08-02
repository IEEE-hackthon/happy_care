import 'package:flutter/material.dart';
import 'package:save_environment/widgets/profile/edit_profile_build_picture.dart';
import 'package:save_environment/widgets/profile/edit_profile_fields.dart';
import 'package:save_environment/widgets/profile/edit_profile_named_title.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 40),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BuildProfilePicture(),
            SizedBox(height: 8),
            ProfileNameAndTitle(),
            SizedBox(height: 15),
            ProfileFields(),
          ],
        ),
      ),
    );
  }
}
