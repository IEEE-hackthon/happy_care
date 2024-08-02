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
      title: 'saveEnvironment',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        fontFamily: 'Work Sans',
      ),
      home: const OnboardingScreen(),
    );
  }
}
