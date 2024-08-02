import 'package:flutter/material.dart';

class ExpansionTileEdit extends StatelessWidget {
  const ExpansionTileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ExpansionTile(
        leading: const Icon(Icons.settings),
        title: const Text(
          'Setting',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
        children: [
          ListTile(
            leading: const Icon(
              Icons.privacy_tip_outlined,
              size: 20,
            ),
            title: const Text(
              'Privacy',
              style: TextStyle(fontSize: 15),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline,
              size: 20,
            ),
            title: const Text(
              'Information',
              style: TextStyle(fontSize: 15),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
