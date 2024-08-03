import 'package:flutter/material.dart';

import '../../models/plant_and_animal_model.dart';
import '../../views/details_page/details_page.dart';

class PlantList extends StatefulWidget {
  const PlantList(
      {super.key,
      required this.color,
      required this.height,
      required this.plants,
      required this.isPlant});
  final Color color;
  final double height;
  final List<PlantAndAnimalModel> plants;
  final bool isPlant;

  @override
  State<PlantList> createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: widget.height,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.plants.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: PlantCard(
              plant: widget.plants[index],
              color: widget.color,
              height: widget.height,
              isPlant: widget.isPlant,
            ),
          ),
        ),
      ),
    );
  }
}

class PlantCard extends StatefulWidget {
  final PlantAndAnimalModel plant;
  final Color color;
  final double height;
  final bool isPlant;

  const PlantCard(
      {super.key,
      required this.plant,
      required this.color,
      required this.height,
      required this.isPlant});

  @override
  PlantCardState createState() => PlantCardState();
}

class PlantCardState extends State<PlantCard> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              plant: widget.plant,
              isPlant: widget.isPlant,
            ),
          ),
        );
      },
      child: Container(
        height: widget.height,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Stack(
            children: [
              Image.network(
                widget.plant.imageUrl,
                fit: BoxFit.cover,
                height: widget.height,
                width: 170,
                errorBuilder: (context, error, stackTrace) => Center(
                  child: Image.asset(
                    "assets/placeholder_image.png",
                    fit: BoxFit.cover,
                    height: 190,
                    width: 170,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: _buildBookmarkButton(widget.color),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: PlantDetails(plant: widget.plant, color: widget.color),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookmarkButton(Color color) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          setState(() {
            isBookmarked = !isBookmarked;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            isBookmarked
                ? Icons.favorite_rounded
                : Icons.favorite_border_rounded,
            color: color,
            size: 35,
          ),
        ),
      ),
    );
  }
}

class PlantDetails extends StatelessWidget {
  final PlantAndAnimalModel plant;
  final Color color;

  const PlantDetails({super.key, required this.plant, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            plant.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
