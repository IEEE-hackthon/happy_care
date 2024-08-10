import 'package:flutter/material.dart';

class PlantAndAnimalListItem extends StatelessWidget {
  const PlantAndAnimalListItem(
      {super.key,
      required this.plantName,
      required this.imageUrl,
      required this.isWatered});
  final String plantName;
  final String imageUrl;
  final bool isWatered;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          plantName,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        const Spacer(),
        Checkbox(
          value: isWatered,
          onChanged: (bool) {},
          activeColor: Colors.green,
        )
      ],
    );
  }
}
