import 'package:flutter/material.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/date_circle.dart';

class ScheduleTab extends StatelessWidget {
  const ScheduleTab({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DataCircle(day: '15', label: 'Today', isSelected: true),
          SizedBox(
            width: 9,
          ),
          DataCircle(day: '22', label: 'April', isSelected: false),
          SizedBox(
            width: 9,
          ),
          DataCircle(day: '29', label: 'April', isSelected: false),
          SizedBox(
            width: 9,
          ),
          DataCircle(day: '6', label: 'May', isSelected: false),
          SizedBox(
            width: 9,
          ),
          DataCircle(day: '13', label: 'May', isSelected: false),
          SizedBox(
            width: 9,
          ),
          DataCircle(day: '20', label: 'May', isSelected: false),
        ],
      ),
    );
  }
}
