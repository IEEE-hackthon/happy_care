import 'package:flutter/material.dart';

import 'views/onboarding_page/onboarding_page.dart';

void main() {
  runApp(const SaveEnvironmentApp());
}

class SaveEnvironmentApp extends StatelessWidget {
  const SaveEnvironmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Work Sans',
      ),
      home: const OnboardingScreen(),
    );
  }
}
