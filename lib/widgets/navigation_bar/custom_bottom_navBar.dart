import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  final Color color;
  final bool isPlant;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.color,
    required this.isPlant,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.all(0),
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.zero,
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBottomNavItem(0, Icons.home_rounded, 'Home'),
            _buildBottomNavItem(1, isPlant ? Icons.local_florist : Icons.pets,
                isPlant ? 'My Plant' : 'My Pets'),
            const Spacer(
              flex: 1,
            ),
            _buildBottomNavItem(2, Icons.favorite, 'Favorite'),
            _buildBottomNavItem(3, Icons.person, 'Profile'),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavItem(int index, IconData icon, String label) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () => onItemSelected(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: selectedIndex == index ? color : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: selectedIndex == index ? color : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
