import 'package:flutter/material.dart';
import 'package:save_environment/views/search_pages/search_planets_page.dart';

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
      bottomNavigationBar: CustomBottomNavBar(
        pages: const [
          HomePlant(),
          MyPlantAndPetPage(),
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
          PlantList(
            isPlant: true,
            plants: [
              PlantAndAnimalModel(
                title: 'Hostas',
                subtitle: 'Perennials',
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoH7pTvLsqEhxKQuBjz6CxqYviqymL4JlGyA&s',
                description:
                    'Hostas are shade-loving perennials known for their large, lush foliage. They come in various shades of green, blue, and variegated patterns.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Hydrangeas',
                subtitle: 'Shrubs',
                imageUrl:
                    'https://www.oneclickplants.co.uk/cdn/shop/products/Shutterstock_2151555339_1200x.jpg?v=1667046573',
                description:
                    'Hydrangeas are shrubs with large, showy flower clusters in colors ranging from white to pink, blue, and purple.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Rosemary',
                subtitle: 'Herbs',
                imageUrl:
                    'https://www.perfumelounge.eu/_next/image?url=https%3A%2F%2Fmedia.perfumelounge.eu%2Ffile%2Fperfumelounge%2Fperfumelounge%2Foriginal_images%2FRozemarijn_-_rosemary.jpg&w=3840&q=75',
                description:
                    'Rosemary is an evergreen herb with needle-like leaves and blue flowers. It’s commonly used in cooking.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Geraniums',
                subtitle: 'Flowers',
                imageUrl:
                    'https://media.istockphoto.com/id/599751224/photo/red-garden-geranium-flowers-in-pot.jpg?s=612x612&w=0&k=20&c=R3FldsJr6O45zErYgs5IJv0tq9zJ_ualAcwAiS9LbmY=',
                description:
                    'Geraniums are popular for their colorful flowers and scented leaves. They are versatile and can be grown in pots or garden beds.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Lavender',
                subtitle: 'Herbs',
                imageUrl:
                    'https://media.istockphoto.com/id/154015701/photo/two-butterflies-checking-out-a-lavender.jpg?s=1024x1024&w=is&k=20&c=IUlbibIs10wfgkCn5L-_Pdg9lkkeuacos-NJT15PIco=',
                description:
                    'Lavender is a fragrant herb with purple flowers and gray-green foliage. It\'s a favorite in gardens for its scent and beauty.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Marigolds',
                subtitle: 'Flowers',
                imageUrl:
                    'https://c8.alamy.com/comp/2JJFWEC/african-marigold-orange-flower-tagetes-erecta-marigolds-flower-heads-bedding-annual-plants-tagetes-imperial-2JJFWEC.jpg',
                description:
                    'Marigolds are vibrant annual flowers that come in shades of yellow, orange, and red. They have a long blooming season.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Boxwood',
                subtitle: 'Shrubs',
                imageUrl:
                    'https://media.istockphoto.com/id/1150926685/photo/the-bright-shiny-young-green-foliage-of-boxwood-buxus-sempervirens-as-the-perfect-backdrop.jpg?s=612x612&w=0&k=20&c=b7s4hGa_SE4hBkk-kMU5JgtibuWgPdaLgG3w5_0hc-c=',
                description:
                    'Boxwood is an evergreen shrub known for its dense, compact growth. It’s commonly used for hedges and topiaries.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
            ],
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
          PlantList(
            isPlant: true,
            plants: [
              PlantAndAnimalModel(
                title: 'Geraniums',
                subtitle: 'Flowers',
                imageUrl:
                    'https://media.istockphoto.com/id/599751224/photo/red-garden-geranium-flowers-in-pot.jpg?s=612x612&w=0&k=20&c=R3FldsJr6O45zErYgs5IJv0tq9zJ_ualAcwAiS9LbmY=',
                description:
                    'Geraniums are popular for their colorful flowers and scented leaves. They are versatile and can be grown in pots or garden beds.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Rosemary',
                subtitle: 'Herbs',
                imageUrl:
                    'https://www.perfumelounge.eu/_next/image?url=https%3A%2F%2Fmedia.perfumelounge.eu%2Ffile%2Fperfumelounge%2Fperfumelounge%2Foriginal_images%2FRozemarijn_-_rosemary.jpg&w=3840&q=75',
                description:
                    'Rosemary is an evergreen herb with needle-like leaves and blue flowers. It’s commonly used in cooking.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Boxwood',
                subtitle: 'Shrubs',
                imageUrl:
                    'https://media.istockphoto.com/id/1150926685/photo/the-bright-shiny-young-green-foliage-of-boxwood-buxus-sempervirens-as-the-perfect-backdrop.jpg?s=612x612&w=0&k=20&c=b7s4hGa_SE4hBkk-kMU5JgtibuWgPdaLgG3w5_0hc-c=',
                description:
                    'Boxwood is an evergreen shrub known for its dense, compact growth. It’s commonly used for hedges and topiaries.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Lavender',
                subtitle: 'Herbs',
                imageUrl:
                    'https://media.istockphoto.com/id/154015701/photo/two-butterflies-checking-out-a-lavender.jpg?s=1024x1024&w=is&k=20&c=IUlbibIs10wfgkCn5L-_Pdg9lkkeuacos-NJT15PIco=',
                description:
                    'Lavender is a fragrant herb with purple flowers and gray-green foliage. It\'s a favorite in gardens for its scent and beauty.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Hydrangeas',
                subtitle: 'Shrubs',
                imageUrl:
                    'https://www.oneclickplants.co.uk/cdn/shop/products/Shutterstock_2151555339_1200x.jpg?v=1667046573',
                description:
                    'Hydrangeas are shrubs with large, showy flower clusters in colors ranging from white to pink, blue, and purple.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Marigolds',
                subtitle: 'Flowers',
                imageUrl:
                    'https://c8.alamy.com/comp/2JJFWEC/african-marigold-orange-flower-tagetes-erecta-marigolds-flower-heads-bedding-annual-plants-tagetes-imperial-2JJFWEC.jpg',
                description:
                    'Marigolds are vibrant annual flowers that come in shades of yellow, orange, and red. They have a long blooming season.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
              PlantAndAnimalModel(
                title: 'Hostas',
                subtitle: 'Perennials',
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoH7pTvLsqEhxKQuBjz6CxqYviqymL4JlGyA&s',
                description:
                    'Hostas are shade-loving perennials known for their large, lush foliage. They come in various shades of green, blue, and variegated patterns.',
                growth: 'Moderate',
                water: 'Regularly',
              ),
            ],
            color: HomePlant.primaryColor,
            height: 260,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
    );
  }
}
