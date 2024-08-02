import 'package:flutter/material.dart';

import '../../../widgets/home/categorys_selector.dart';
import '../../../widgets/home/custom_appBar.dart';
import '../../../widgets/home/recently_identified.dart';
import '../../../widgets/home/searsh_bar.dart';
import '../../../widgets/home/section_header.dart';
import '../../../widgets/navigation_bar/custom_bottom_navBar.dart';
import '../../../widgets/navigation_bar/custom_floating_action_button.dart';

class HomeAnimal extends StatefulWidget {
  const HomeAnimal({super.key});
  static const Color primaryColor = Color(0xfff9b848);
  static const List<BoxShadow> bottomBarShadow = [
    BoxShadow(
      color: Colors.black12,
      spreadRadius: 2,
      blurRadius: 10,
    ),
  ];

  @override
  HomeAnimalState createState() => HomeAnimalState();
}

class HomeAnimalState extends State<HomeAnimal> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      floatingActionButton: const CustomFloatingActionButton(
        color: HomeAnimal.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(
        isPlant: false,
        color: HomeAnimal.primaryColor,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      appBar: const CustomAppBar(
        borderColor: HomeAnimal.primaryColor,
      ),
      body: CustomScrollView(
        slivers: [
          const CustomSearchBar(),
          const SectionHeader(title: 'Recently Identified', seeMore: ''),
          const PlantList(
            color: HomeAnimal.primaryColor,
            height: 220,
          ),
          const SectionHeader(title: 'Explore', seeMore: ''),
          CategorySelector(
            allTags: const [
              'All',
              'Dogs',
              'Cats',
              'Birds',
              'Fish',
              'Reptiles',
              'Exotic Pets',
              'Insects',
              'Amphibians',
            ],
            selectedTagBackgroundColor: HomeAnimal.primaryColor,
            onTagSelected: (p0) {},
          ),
          const PlantList(
            color: HomeAnimal.primaryColor,
            height: 260,
          ),
          const SectionHeader(title: 'Recently Identified', seeMore: ''),
          const PlantList(
            color: HomeAnimal.primaryColor,
            height: 220,
          ),
        ],
      ),
    );
  }
}
