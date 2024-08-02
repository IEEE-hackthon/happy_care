import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:save_environment/widgets/search/search_widget.dart';

class PlanetsSearchPage extends StatelessWidget {
  const PlanetsSearchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SearchWidget(
      coverPhoto: 'assets/search/flower.png',
      borderColor: Color(0xff99BA60),
    );
  }
}
