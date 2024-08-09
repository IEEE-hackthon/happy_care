import 'package:flutter/material.dart';

import '../../widgets/myPetAndMyPlanet/shedule_tab.dart';

class MyPlant extends StatelessWidget {
  const MyPlant({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          ],
          bottom: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                text: 'Shedules',
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
        body: TabBarView(
          children: [
            ScheduleTab(),
          ],
        ),
      ),
    );
  }
}
