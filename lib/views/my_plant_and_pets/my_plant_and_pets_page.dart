import 'package:flutter/material.dart';

class MyPlantAndPetPage extends StatelessWidget {
  const MyPlantAndPetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My plant and pets'),
      ),
      body: const Center(
        child: Text('plant and pets'),
      ),
    );
  }
}
