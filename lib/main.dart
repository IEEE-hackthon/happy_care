import 'package:flutter/material.dart';

import 'views/onboarding_page.dart';

void main() {
  runApp(const SaveEnvironmentApp());
}

class SaveEnvironmentApp extends StatelessWidget {
  const SaveEnvironmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
