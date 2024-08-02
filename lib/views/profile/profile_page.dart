import 'package:flutter/material.dart';
import 'package:save_environment/widgets/profile/profile_header.dart';
import 'package:save_environment/widgets/profile/profile_options.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileHeader(),
              SizedBox(height: 16),
              ProfileOptions(),
            ],
          ),
        ),
      ),
    );
  }
}
