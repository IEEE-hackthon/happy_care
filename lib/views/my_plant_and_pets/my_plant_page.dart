import 'package:flutter/material.dart';
import 'package:save_environment/views/fav_page/fav_page.dart';
import 'package:save_environment/views/home/home_plant/home_plant.dart';
import 'package:save_environment/views/profile/profile_page.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/custom_divider.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/plant_and_animal_list_item.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/schedule_tab.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/title.dart';
import 'package:save_environment/widgets/navigation_bar/custom_bottom_navBar.dart';
import 'package:save_environment/widgets/navigation_bar/custom_floating_action_button.dart';

class MyPlant extends StatefulWidget {
  const MyPlant({super.key});

  @override
  State<MyPlant> createState() => _MyPlantState();
}

class _MyPlantState extends State<MyPlant> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: const CustomFloatingActionButton(
          color: HomePlant.primaryColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNavBar(
          pages: const [
            HomePlant(),
            MyPlant(),
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
                text: 'My garden',
              ),
              Tab(
                text: 'Saved',
              ),
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
                  imagePath: 'assets/icon/Group 64.png',
                  title: 'Water',
                ),
                SizedBox(
                  height: 20,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Hostas',
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoH7pTvLsqEhxKQuBjz6CxqYviqymL4JlGyA&s',
                  isWatered: true,
                ),
                Customdivider(),
                SizedBox(
                  height: 13,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Hydrangeas',
                  imageUrl:
                      'https://www.oneclickplants.co.uk/cdn/shop/products/Shutterstock_2151555339_1200x.jpg?v=1667046573',
                  isWatered: true,
                ),
                Customdivider(),
                SizedBox(
                  height: 13,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Rosemary',
                  imageUrl:
                      'https://www.perfumelounge.eu/_next/image?url=https%3A%2F%2Fmedia.perfumelounge.eu%2Ffile%2Fperfumelounge%2Fperfumelounge%2Foriginal_images%2FRozemarijn_-_rosemary.jpg&w=3840&q=75',
                  isWatered: false,
                ),
                Customdivider(),
                SizedBox(
                  height: 13,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Geraniums',
                  imageUrl:
                      'https://media.istockphoto.com/id/599751224/photo/red-garden-geranium-flowers-in-pot.jpg?s=612x612&w=0&k=20&c=R3FldsJr6O45zErYgs5IJv0tq9zJ_ualAcwAiS9LbmY=',
                  isWatered: false,
                ),
                Customdivider(),
                SizedBox(
                  height: 13,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Lavender',
                  imageUrl:
                      'https://media.istockphoto.com/id/154015701/photo/two-butterflies-checking-out-a-lavender.jpg?s=1024x1024&w=is&k=20&c=IUlbibIs10wfgkCn5L-_Pdg9lkkeuacos-NJT15PIco=',
                  isWatered: false,
                ),
                Customdivider(),
                SizedBox(
                  height: 13,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Marigolds',
                  imageUrl:
                      'https://c8.alamy.com/comp/2JJFWEC/african-marigold-orange-flower-tagetes-erecta-marigolds-flower-heads-bedding-annual-plants-tagetes-imperial-2JJFWEC.jpg',
                  isWatered: false,
                ),
                Customdivider(),
                SizedBox(
                  height: 13,
                ),
                PlantAndAnimalListItem(
                  plantName: 'Boxwood',
                  imageUrl:
                      'https://media.istockphoto.com/id/1150926685/photo/the-bright-shiny-young-green-foliage-of-boxwood-buxus-sempervirens-as-the-perfect-backdrop.jpg?s=612x612&w=0&k=20&c=b7s4hGa_SE4hBkk-kMU5JgtibuWgPdaLgG3w5_0hc-c=',
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
