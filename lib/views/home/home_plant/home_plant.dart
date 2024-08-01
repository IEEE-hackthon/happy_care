import 'package:flutter/material.dart';

import '../../../widgets/home/categorys_selector.dart';
import '../../../widgets/home/custom_appBar.dart';
import '../../../widgets/home/recently_identified.dart';
import '../../../widgets/home/searsh_bar.dart';
import '../../../widgets/home/section_header.dart';

class HomePlant extends StatelessWidget {
  const HomePlant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        borderColor: Color(0xff8fba52),
      ),
      body: CustomScrollView(
        slivers: [
          CustomSearchBar(),
          const SectionHeader(title: 'Recently Identified', seeMore: ''),
          const PlantList(),
          const SectionHeader(title: 'Explore', seeMore: ''),
          CategorySelector(
            onTagSelected: (String) {},
          ),
        ],
      ),
    );
  }
}
