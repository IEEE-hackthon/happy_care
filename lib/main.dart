import 'package:flutter/material.dart';
import 'package:save_environment/views/home/splash_screen/splash_screen.dart';

void main() {
  runApp(const HappyCareApp());
}

class HappyCareApp extends StatelessWidget {
  const HappyCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HappyCare',
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
      home: const SplashScreen(),
    );
  }
}
