import 'package:flutter/material.dart';
import 'package:save_environment/views/home/home_plant/home_plant.dart';

import '../../models/plant_and_animal_model.dart';
import '../../widgets/navigation_bar/custom_bottom_navBar.dart';
import '../../widgets/navigation_bar/custom_floating_action_button.dart';
import '../fav_page/fav_page.dart';
import '../home/home_animal/home_animal.dart';
import '../my_plant_and_pets/my_plant_page.dart';
import '../profile/profile_page.dart';

class DetailsPage extends StatefulWidget {
  final PlantAndAnimalModel plant;
  final bool isPlant;
  const DetailsPage({
    super.key,
    required this.plant,
    required this.isPlant,
  });

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: const CustomFloatingActionButton(
        color: HomePlant.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        pages: const [
          HomeAnimal(),
          MyPlant(), // Adjust as needed
          FavPage(),
          ProfilePage(
            themeColor: HomeAnimal.primaryColor,
          ),
        ],
        isPlant: widget.isPlant,
        color: HomeAnimal.primaryColor,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Image.network(
                  widget.plant.imageUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: -5,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 22,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                children: [
                  Center(
                    child: Text(
                      widget.plant.title,
                      style: const TextStyle(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Center(
                    child: Text(
                      widget.plant.subtitle,
                      style: const TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.plant.description,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow(
                      Icons.light_mode_outlined, 'Light', "Partial sun"),
                  _buildInfoRow(Icons.water_drop, 'Water', 'every 3-7 days'),
                  _buildInfoRow(Icons.grass, 'Soil', widget.plant.water),
                  _buildInfoRow(
                      Icons.thermostat_rounded, 'Temperature', "15°C - 29°C"),
                  widget.isPlant
                      ? _buildInfoRow(
                          Icons.eco, 'How to grow', widget.plant.growth)
                      : _buildInfoRow(
                          Icons.pets, 'Pet food', widget.plant.growth),
                  _buildInfoRow(Icons.opacity, 'Humidity', "50 - 70%"),
                  _buildInfoRow(
                      Icons.warning_amber_rounded, 'Toxcity', "Non-toxic"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xff8fba52), size: 28),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
