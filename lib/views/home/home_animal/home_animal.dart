import 'package:flutter/material.dart';
import 'package:save_environment/views/search_pages/search_animals_page.dart';

import '../../../models/plant_and_animal_model.dart';
import '../../../widgets/home/categorys_selector.dart';
import '../../../widgets/home/custom_app_bar.dart';
import '../../../widgets/home/recently_identified.dart';
import '../../../widgets/home/searsh_bar.dart';
import '../../../widgets/home/section_header.dart';
import '../../../widgets/navigation_bar/custom_bottom_navBar.dart';
import '../../../widgets/navigation_bar/custom_floating_action_button.dart';
import '../../fav_page/fav_page.dart';
import '../../my_plant_and_pets/my_plant_and_pets_page.dart';
import '../../profile/profile_page.dart';

class HomeAnimal extends StatefulWidget {
  const HomeAnimal({super.key});
  static const Color primaryColor = Color(0xff8fba52);
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
      floatingActionButton: const CustomFloatingActionButton(
        color: HomeAnimal.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        pages: const [
          HomeAnimal(),
          MyPlantAndPetPage(),
          FavPage(),
          ProfilePage(
            themeColor: HomeAnimal.primaryColor,
          ),
        ],
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
          CustomSearchBar(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AnimalsSearchPage()),
            ),
          ),
          const SectionHeader(title: 'Recently Identified', seeMore: ''),
          PlantList(
            isPlant: false,
            plants: [
              PlantAndAnimalModel(
                title: 'Golden Retriever',
                subtitle: 'Dog',
                imageUrl:
                    'https://th.bing.com/th/id/OIP.9jp3vrVA5qHN5WLPI6ebQAHaLH?rs=1&pid=ImgDetMain',
                description:
                    'Golden Retrievers are friendly, intelligent, and devoted. They are one of the most popular dog breeds in the United States.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Persian Cat',
                subtitle: 'Cat',
                imageUrl:
                    'https://animalcarecentersmyrna.com/wp-content/uploads/2020/02/2.10.2020-Persian-Cat-2.jpeg',
                description:
                    'Persian Cats are known for their long, flowing coats and sweet personalities. They enjoy a quiet, calm environment.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Parrot',
                subtitle: 'Bird',
                imageUrl:
                    'https://th.bing.com/th/id/R.5456750c027aaab49247ba1292b04c4a?rik=qSjoXaUjibbcVA&riu=http%3a%2f%2f2.bp.blogspot.com%2f-VoTUi4f9Q00%2fUv94xTXY9gI%2fAAAAAAAAAYQ%2fJ0rHsm3Fo6E%2fs1600%2fparrot.jpg&ehk=qY4AfNyehpQ%2bYRPgWmPRn0fTVCA9qyqh8I%2fPWCl8zwc%3d&risl=&pid=ImgRaw&r=0',
                description:
                    'Parrots are known for their bright colors and ability to mimic human speech. They are social and intelligent birds.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Goldfish',
                subtitle: 'Fish',
                imageUrl:
                    'https://th.bing.com/th/id/OIP.PRLJdeqjZqzUGSFF_7NbpwHaFn?rs=1&pid=ImgDetMain',
                description:
                    'Goldfish are popular freshwater fish known for their vibrant colors and ease of care. They are a favorite among beginner fish keepers.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Bearded Dragon',
                subtitle: 'Reptile',
                imageUrl:
                    'https://th.bing.com/th/id/R.b1fe42ecd6d3dcb0705217ea8762c793?rik=2KNccHdtdlwLYQ&pid=ImgRaw&r=0',
                description:
                    'Bearded Dragons are friendly reptiles that make great pets. They are known for their unique appearance and calm demeanor.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Sugar Glider',
                subtitle: 'Exotic Pet',
                imageUrl:
                    'https://i.pinimg.com/originals/95/2a/d4/952ad46e5b7609be8a7942530c76ed22.jpg',
                description:
                    'Sugar Gliders are small, nocturnal marsupials that are known for their ability to glide through the air. They are social animals that enjoy companionship.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Tarantula',
                subtitle: 'Insect',
                imageUrl:
                    'https://th.bing.com/th/id/OIP.jbo7THBv5DmVYVKZ1K_CDAHaGZ?w=1080&h=932&rs=1&pid=ImgDetMain',
                description:
                    'Tarantulas are large, hairy spiders that are popular among insect enthusiasts. They are known for their docile nature and unique appearance.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Axolotl',
                subtitle: 'Amphibian',
                imageUrl:
                    'https://th.bing.com/th/id/R.4f99d330683b579d7172ed657b04ea46?rik=d6xvdp4D6j5nAg&pid=ImgRaw&r=0',
                description:
                    'Axolotls are aquatic amphibians known for their ability to regenerate limbs. They have a unique and fascinating appearance.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
            ],
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
          PlantList(
            isPlant: false,
            plants: [
              PlantAndAnimalModel(
                title: 'Sugar Glider',
                subtitle: 'Exotic Pet',
                imageUrl:
                    'https://i.pinimg.com/originals/95/2a/d4/952ad46e5b7609be8a7942530c76ed22.jpg',
                description:
                    'Sugar Gliders are small, nocturnal marsupials that are known for their ability to glide through the air. They are social animals that enjoy companionship.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Goldfish',
                subtitle: 'Fish',
                imageUrl:
                    'https://th.bing.com/th/id/OIP.PRLJdeqjZqzUGSFF_7NbpwHaFn?rs=1&pid=ImgDetMain',
                description:
                    'Goldfish are popular freshwater fish known for their vibrant colors and ease of care. They are a favorite among beginner fish keepers.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Golden Retriever',
                subtitle: 'Dog',
                imageUrl:
                    'https://th.bing.com/th/id/OIP.9jp3vrVA5qHN5WLPI6ebQAHaLH?rs=1&pid=ImgDetMain',
                description:
                    'Golden Retrievers are friendly, intelligent, and devoted. They are one of the most popular dog breeds in the United States.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Axolotl',
                subtitle: 'Amphibian',
                imageUrl:
                    'https://th.bing.com/th/id/R.4f99d330683b579d7172ed657b04ea46?rik=d6xvdp4D6j5nAg&pid=ImgRaw&r=0',
                description:
                    'Axolotls are aquatic amphibians known for their ability to regenerate limbs. They have a unique and fascinating appearance.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Parrot',
                subtitle: 'Bird',
                imageUrl:
                    'https://th.bing.com/th/id/R.5456750c027aaab49247ba1292b04c4a?rik=qSjoXaUjibbcVA&riu=http%3a%2f%2f2.bp.blogspot.com%2f-VoTUi4f9Q00%2fUv94xTXY9gI%2fAAAAAAAAAYQ%2fJ0rHsm3Fo6E%2fs1600%2fparrot.jpg&ehk=qY4AfNyehpQ%2bYRPgWmPRn0fTVCA9qyqh8I%2fPWCl8zwc%3d&risl=&pid=ImgRaw&r=0',
                description:
                    'Parrots are known for their bright colors and ability to mimic human speech. They are social and intelligent birds.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Tarantula',
                subtitle: 'Insect',
                imageUrl:
                    'https://th.bing.com/th/id/OIP.jbo7THBv5DmVYVKZ1K_CDAHaGZ?w=1080&h=932&rs=1&pid=ImgDetMain',
                description:
                    'Tarantulas are large, hairy spiders that are popular among insect enthusiasts. They are known for their docile nature and unique appearance.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Bearded Dragon',
                subtitle: 'Reptile',
                imageUrl:
                    'https://th.bing.com/th/id/R.b1fe42ecd6d3dcb0705217ea8762c793?rik=2KNccHdtdlwLYQ&pid=ImgRaw&r=0',
                description:
                    'Bearded Dragons are friendly reptiles that make great pets. They are known for their unique appearance and calm demeanor.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Persian Cat',
                subtitle: 'Cat',
                imageUrl:
                    'https://animalcarecentersmyrna.com/wp-content/uploads/2020/02/2.10.2020-Persian-Cat-2.jpeg',
                description:
                    'Persian Cats are known for their long, flowing coats and sweet personalities. They enjoy a quiet, calm environment.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
            ],
            color: HomeAnimal.primaryColor,
            height: 260,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
    );
  }
}
