import 'package:flutter/material.dart';
import 'package:save_environment/views/fav_page/fav_page.dart';
import 'package:save_environment/views/home/home_animal/home_animal.dart';
import 'package:save_environment/views/home/home_plant/home_plant.dart';
import 'package:save_environment/views/profile/profile_page.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/custom_divider.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/plant_and_animal_list_item.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/schedule_tab.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/title.dart';
import 'package:save_environment/widgets/navigation_bar/custom_bottom_navBar.dart';
import 'package:save_environment/widgets/navigation_bar/custom_floating_action_button.dart';

class MyPets extends StatefulWidget {
  const MyPets({super.key});

  @override
  State<MyPets> createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: const CustomFloatingActionButton(
          color: HomeAnimal.primaryColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNavBar(
          pages: const [
            HomeAnimal(),
            MyPets(),
            FavPage(),
            ProfilePage(
              themeColor: HomePlant.primaryColor,
            ),
          ],
          isPlant: true,
          color: HomePlant.primaryColor,
          selectedIndex: _selectedIndex,
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ],
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                text: 'Schedules',
              ),
              Tab(
                text: 'My pets',
              ),
              Tab(
                text: 'Saved',
              )
            ],
          ),
          elevation: 0,
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              right: 8,
              left: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ScheduleTab(),
                SizedBox(
                  height: 37,
                ),
                TitleName(
                  imagePath: 'assets/icon/Vector.png',
                  title: 'Pet Food',
                ),
                SizedBox(
                  height: 20,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Golden Retriever',
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.9jp3vrVA5qHN5WLPI6ebQAHaLH?rs=1&pid=ImgDetMain',
                  isWatered: true,
                ),
                Customdivider(),
                SizedBox(
                  height: 13,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Persian Cat',
                  imageUrl:
                      'https://animalcarecentersmyrna.com/wp-content/uploads/2020/02/2.10.2020-Persian-Cat-2.jpeg',
                  isWatered: true,
                ),
                Customdivider(),
                SizedBox(
                  height: 20,
                ),
                TitleName(
                  imagePath: 'assets/icon/Vector (1).png',
                  title: 'Pet Walking',
                ),
                SizedBox(
                  height: 20,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Golden Retriever',
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.9jp3vrVA5qHN5WLPI6ebQAHaLH?rs=1&pid=ImgDetMain',
                  isWatered: false,
                ),
                Customdivider(),
                SizedBox(
                  height: 13,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Persian Cat',
                  imageUrl:
                      'https://animalcarecentersmyrna.com/wp-content/uploads/2020/02/2.10.2020-Persian-Cat-2.jpeg',
                  isWatered: false,
                ),
                Customdivider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
