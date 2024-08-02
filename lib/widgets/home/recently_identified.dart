import 'package:flutter/material.dart';

import '../../models/plant_and_animal_model.dart';

class PlantList extends StatefulWidget {
  const PlantList({super.key, required this.color, required this.height});
  final Color color;
  final double height;

  @override
  State<PlantList> createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  final List<PlantModel> plants = [
    PlantModel(
      name: 'Snake Plant',
      imageUrl:
          'https://rosysoil.com/cdn/shop/articles/Dracaena-trifasciata-plant_900x.jpg?v=1671498817',
      description: 'نبات الصبار هو نبات عصاري يتحمل الجفاف.',
    ),
    PlantModel(
      name: 'Snake Plant',
      imageUrl:
          'https://www.dahingplants.com/cdn/shop/products/000109-01_1800x1800.jpg?v=1643729080',
      description: 'نبات الصبار هو نبات عصاري يتحمل الجفاف.',
    ),
    PlantModel(
      name: 'Snake Plant',
      imageUrl:
          'https://rosysoil.com/cdn/shop/articles/Dracaena-trifasciata-plant_900x.jpg?v=1671498817',
      description: 'نبات الصبار هو نبات عصاري يتحمل الجفاف.',
    ),
    PlantModel(
      name: 'Snake Plant',
      imageUrl:
          'https://www.dahingplants.com/cdn/shop/products/000109-01_1800x1800.jpg?v=1643729080',
      description: 'نبات الصبار هو نبات عصاري يتحمل الجفاف.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: widget.height,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: plants.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: PlantCard(
              plant: plants[index],
              color: widget.color,
              height: widget.height,
            ),
          ),
        ),
      ),
    );
  }
}

class PlantCard extends StatefulWidget {
  final PlantModel plant;
  final Color color;
  final double height;

  const PlantCard(
      {super.key,
      required this.plant,
      required this.color,
      required this.height});

  @override
  PlantCardState createState() => PlantCardState();
}

class PlantCardState extends State<PlantCard> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
  final PlantModel plant;
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
            plant.name,
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
