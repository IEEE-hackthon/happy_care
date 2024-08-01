import 'package:flutter/material.dart';

class HomePlant extends StatelessWidget {
  const HomePlant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Hi, Ali',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundImage:
                    NetworkImage('https://via.placeholder.com/150'),
                radius: 20,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            SearchBar(),
            const SizedBox(height: 20),
            SectionTitle(title: 'Recently Identified'),
            const SizedBox(height: 10),
            RecentlyIdentifiedList(),
            const SizedBox(height: 20),
            SectionTitle(title: 'Explore'),
            const SizedBox(height: 10),
            ExploreCategories(),
            const SizedBox(height: 10),
            ExploreList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: 'My plant',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Icon(Icons.filter_list),
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}

class RecentlyIdentifiedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      index % 2 == 0 ? Icons.favorite : Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Snake Plant',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ExploreCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CategoryButton(label: 'All', isSelected: true),
        CategoryButton(label: 'Trees'),
        CategoryButton(label: 'Shrubs'),
        CategoryButton(label: 'Climbers'),
        CategoryButton(label: 'Climbers'),
        CategoryButton(label: 'Climbers'),
        CategoryButton(label: 'Climbers'),
        CategoryButton(label: 'Climbers'),
        CategoryButton(label: 'Climbers'),
      ],
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  CategoryButton({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green[100] : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.green : Colors.black,
        ),
      ),
    );
  }
}

class ExploreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      index % 2 == 0
                          ? Icons.check_circle
                          : Icons.check_circle_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Bunny Ears Cactus',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
