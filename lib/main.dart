import 'package:flutter/material.dart';
import 'package:save_environment/views/login_page.dart';

void main() {
  runApp(const SaveEnvironment());
}

class SaveEnvironment extends StatelessWidget {
  const SaveEnvironment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}
