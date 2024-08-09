import 'package:flutter/material.dart';
import 'package:save_environment/views/home/home_plant/home_plant.dart';
import 'package:save_environment/widgets/profile/profile_header.dart';
import 'package:save_environment/widgets/profile/profile_options.dart';

import '../../widgets/navigation_bar/custom_bottom_navBar.dart';
import '../../widgets/navigation_bar/custom_floating_action_button.dart';
import '../fav_page/fav_page.dart';
import '../my_plant_and_pets/my_plant_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.themeColor});
  final Color themeColor;

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      floatingActionButton: CustomFloatingActionButton(
        color: widget.themeColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        pages: [
          const HomePlant(),
          const MyPlant(),
          const FavPage(),
          ProfilePage(
            themeColor: widget.themeColor,
          ),
        ],
        isPlant: true,
        color: widget.themeColor,
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemSelected,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileHeader(
                color: widget.themeColor,
              ),
              const SizedBox(height: 16),
              ProfileOptions(
                color: widget.themeColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
