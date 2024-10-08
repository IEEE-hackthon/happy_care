import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  final Color color;
  final bool isPlant;
  final List<Widget> pages;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.color,
    required this.isPlant,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBottomNavItem(context, 0, Icons.home_rounded, 'Home'),
          const Spacer(flex: 1),
          _buildBottomNavItem(
              context,
              1,
              isPlant ? Icons.local_florist : Icons.pets,
              isPlant ? 'My Plant' : 'My Pets'),
          const Spacer(flex: 2),
          _buildBottomNavItem(context, 2, Icons.favorite, 'Favorite'),
          const Spacer(flex: 1),
          _buildBottomNavItem(context, 3, Icons.person, 'Profile'),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(
      BuildContext context, int index, IconData icon, String label) {
    return InkWell(
      onTap: () {
        onItemSelected(index);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pages[index]),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: selectedIndex == index ? color : Colors.grey,
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: selectedIndex == index ? color : Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
