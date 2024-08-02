import 'package:flutter/material.dart';
import 'package:save_environment/widgets/search/search_widget.dart';

class AnimalsSearchPage extends StatelessWidget {
  const AnimalsSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchWidget(
      coverPhoto: 'assets/search/Pet care.png',
      borderColor: Colors.orange,
    );
  }
}
