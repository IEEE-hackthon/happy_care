import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/onboarding_page_model.dart';
import '../widgets/onboarding/onboarding_button_widget.dart';
import '../widgets/onboarding/onboarding_indicator_widget.dart';
import '../widgets/onboarding/onboarding_widget.dart';
import 'login_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final pages = [
    OnboardingPage(
      image: 'assets/onboarding_images/splash1.png',
      title: 'Explore',
      description:
          'Discover the fascinating world of plants and animals around you.',
      buttonColor: Colors.orange,
    ),
    OnboardingPage(
      image: 'assets/onboarding_images/splash2.png',
      title: 'Care',
      description:
          'Learn the best practices to nurture and protect your green and furry friends.',
      buttonColor: Colors.green,
    ),
    OnboardingPage(
      image: 'assets/onboarding_images/splash3.png',
      title: 'Thrive',
      description:
          'Watch your plants and pets flourish with the care you provide.',
      buttonColor: Colors.orange,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentPage = index),
            children:
                pages.map((page) => OnboardingPageWidget(page: page)).toList(),
          ),
          if (_currentPage < pages.length - 1)
            Positioned(
              top: 40.0,
              right: 20.0,
              child: TextButton(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LogInPage())),
                child:
                    const Text('Skip', style: TextStyle(color: Colors.white)),
              ),
            ),
          Positioned(
            bottom: 40.0,
            left: 16.0,
            right: 16.0,
            child: Column(
              children: [
                OnboardingButtonWidget(
                  pageController: _pageController,
                  currentPage: _currentPage,
                  pages: pages,
                ),
                const SizedBox(height: 20.0),
                OnboardingIndicatorWidget(
                  pageController: _pageController,
                  currentPage: _currentPage,
                  pages: pages,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
