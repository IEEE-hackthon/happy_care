import 'package:flutter/material.dart';

class PlantListItem extends StatelessWidget {
  const PlantListItem(
      {super.key,
      required this.plantName,
      required this.imageUrl,
      required this.isWatered});
  final String plantName;
  final String imageUrl;
  final bool isWatered;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Spacer(),
          Checkbox(
            value: isWatered,
            onChanged: (bool) {},
            activeColor: Colors.green,
          )
        ],
      ),
    );
  }
}
