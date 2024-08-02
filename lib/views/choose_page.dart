import 'package:flutter/material.dart';

import '../widgets/home/category_card.dart';
import 'home/home_animal/home_animal.dart';
import 'home/home_plant/home_plant.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > constraints.maxHeight) {
            // Horizontal orientation
            return const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryCard(
                    color: Color(0xFF8FBA52),
                    innerColor: Color(0xFFFFC107),
                    icon: Icons.local_florist,
                    text: 'Plants',
                    destinationPage: HomePlant(),
                  ),
                  SizedBox(width: 40),
                  CategoryCard(
                    color: Color(0xFFFFC107),
                    innerColor: Color(0xFF8FBA52),
                    icon: Icons.pets,
                    text: 'Pets',
                    destinationPage: HomeAnimal(),
                  ),
                ],
              ),
            );
          } else {
            // Vertical orientation
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryCard(
                    color: Color(0xFF8FBA52),
                    innerColor: Color(0xFFFFC107),
                    icon: Icons.local_florist,
                    text: 'Plants',
                    destinationPage: HomePlant(),
                  ),
                  SizedBox(height: 40),
                  CategoryCard(
                    color: Color(0xFFFFC107),
                    innerColor: Color(0xFF8FBA52),
                    icon: Icons.pets,
                    text: 'Pets',
                    destinationPage: HomeAnimal(),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
