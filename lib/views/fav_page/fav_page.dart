import 'package:flutter/material.dart';

import '../../models/fav_item/fav_item.dart';
import '../../widgets/favorite/custom_card.dart';
import '../../widgets/home/section_header.dart';
import '../../widgets/navigation_bar/custom_bottom_navBar.dart';
import '../../widgets/navigation_bar/custom_floating_action_button.dart';
import '../home/home_plant/home_plant.dart';
import '../my_plant_and_pets/my_plant_and_pets_page.dart';
import '../profile/profile_page.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  FavPageState createState() => FavPageState();
}

class FavPageState extends State<FavPage> {
  int _selectedIndex = 2;

  final List<Item> items = [
    Item(
      imageUrl:
          'https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/master/w_1280,c_limit/shouts-animals-watch-baby-hemingway.jpg',
      title: 'Gray cat',
      subtitle: 'cats',
    ),
    Item(
      imageUrl:
          'https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/master/w_1280,c_limit/shouts-animals-watch-baby-hemingway.jpg',
      title: 'Siamese cat',
      subtitle: 'cats',
    ),
    Item(
      imageUrl:
          'https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/master/w_1280,c_limit/shouts-animals-watch-baby-hemingway.jpg',
      title: 'Poodles',
      subtitle: 'dogs',
    ),
    Item(
      imageUrl:
          'https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/master/w_1280,c_limit/shouts-animals-watch-baby-hemingway.jpg',
      title: 'Canary',
      subtitle: 'bride',
    ),
  ];

  final List<Item> diagnosis = [
    Item(
      imageUrl:
          'https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/master/w_1280,c_limit/shouts-animals-watch-baby-hemingway.jpg',
      title: 'Feeling tired',
      subtitle: 'Lack of sleep',
    ),
    Item(
      imageUrl:
          'https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/master/w_1280,c_limit/shouts-animals-watch-baby-hemingway.jpg',
      title: 'Chest pain',
      subtitle: 'Heartburn',
    ),
    Item(
      imageUrl:
          'https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/master/w_1280,c_limit/shouts-animals-watch-baby-hemingway.jpg',
      title: 'Stomach ache',
      subtitle: 'Indigestion',
    ),
    Item(
      imageUrl:
          'https://media.newyorker.com/photos/62c4511e47222e61f46c2daa/master/w_1280,c_limit/shouts-animals-watch-baby-hemingway.jpg',
      title: 'Sore throat',
      subtitle: 'Common Cold',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 220.0,
                childAspectRatio: 0.7,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return CustomCard(
                  imageUrl: item.imageUrl,
                  title: item.title,
                  subtitle: item.subtitle,
                  onMorePressed: () {},
                  cardWidth: 160.0,
                  onFavoritePressed: () {},
                );
              },
            ),
          ),
          const SectionHeader(title: 'Diagnosis', seeMore: 'See All'),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 240.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: diagnosis.length,
                itemBuilder: (context, index) {
                  final item = diagnosis[index];
                  return CustomCard(
                    onFavoritePressed: () {},
                    imageUrl: item.imageUrl,
                    title: item.title,
                    subtitle: item.subtitle,
                    onMorePressed: () {},
                    cardWidth: 240.0,
                  );
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20.0)),
        ],
      ),
      floatingActionButton:
          const CustomFloatingActionButton(color: HomePlant.primaryColor),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavBar(
        pages: const [
          HomePlant(),
          MyPlantAndPetPage(),
          FavPage(),
          ProfilePage(themeColor: HomePlant.primaryColor),
        ],
        isPlant: true,
        color: HomePlant.primaryColor,
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
