import 'package:flutter/material.dart';
class DataCircle extends StatelessWidget {
  const DataCircle({super.key, required this.day, required this.label, required this.isSelected});

  final String day;
  final String label;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              label ,
            style: TextStyle(
              color: isSelected ? Colors.green : Colors.black ,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8,),
          CircleAvatar(
            radius: 20,
            backgroundColor: isSelected ? Colors.green : Colors.grey[300],
            child: Text(
                day,
            style: TextStyle(
              color:  isSelected ? Colors.white : Colors.black,
            ),
            ),
          )
        ],
      ),
    );
  }
}
