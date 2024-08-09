import 'package:flutter/material.dart';
import 'package:save_environment/widgets/myPetAndMyPlanet/date_circle.dart';

class ScheduleTab extends StatelessWidget {
  const ScheduleTab({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          SingleChildScrollView(
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
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(
                  Icons.water_drop_outlined,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Water',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
