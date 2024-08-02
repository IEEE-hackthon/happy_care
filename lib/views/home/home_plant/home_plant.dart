import 'package:flutter/material.dart';
import 'package:save_environment/views/search_pages/search_planets_page.dart';

import '../../../widgets/home/categorys_selector.dart';
import '../../../widgets/home/custom_app_bar.dart';
import '../../../widgets/home/recently_identified.dart';
import '../../../widgets/home/searsh_bar.dart';
import '../../../widgets/home/section_header.dart';
import '../../../widgets/navigation_bar/custom_bottom_navBar.dart';
import '../../../widgets/navigation_bar/custom_floating_action_button.dart';

class HomePlant extends StatefulWidget {
  const HomePlant({super.key});
  static const Color primaryColor = Color(0xff8fba52);
  static const List<BoxShadow> bottomBarShadow = [
    BoxShadow(
      color: Colors.black12,
      spreadRadius: 2,
      blurRadius: 10,
    ),
  ];

  @override
  HomePlantState createState() => HomePlantState();
}

class HomePlantState extends State<HomePlant> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: const CustomFloatingActionButton(
        color: HomePlant.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(
        isPlant: true,
        color: HomePlant.primaryColor,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      appBar: const CustomAppBar(
        borderColor: HomePlant.primaryColor,
      ),
      body: CustomScrollView(
        slivers: [
          CustomSearchBar(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PlanetsSearchPage()),
            ),
          ),
          const SectionHeader(title: 'Recently Identified', seeMore: ''),
          const PlantList(
            color: HomePlant.primaryColor,
            height: 220,
          ),
          const SectionHeader(title: 'Explore', seeMore: ''),
          CategorySelector(
            allTags: const [
              'All',
              'Trees',
              'Shrubs',
              'Climbers',
              'Bamboos',
              'Grasses',
              'Ferns',
              'Aquatics',
              'Orchids',
            ],
            selectedTagBackgroundColor: HomePlant.primaryColor,
            onTagSelected: (p0) {},
          ),
          const PlantList(
            color: HomePlant.primaryColor,
            height: 260,
          ),
          const SectionHeader(title: 'Recently Identified', seeMore: ''),
        ],
      ),
    );
  }
}
