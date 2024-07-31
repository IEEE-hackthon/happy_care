import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/onboarding_page_model.dart';
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
      image: 'assets/onboarding/splash1.png',
      title: 'Explore',
      description:
          'Discover the fascinating world of plants and animals around you.',
      buttonColor: Colors.orange,
    ),
    OnboardingPage(
      image: 'assets/onboarding/splash2.png',
      title: 'Care',
      description:
          'Learn the best practices to nurture and protect your green and furry friends.',
      buttonColor: Colors.green,
    ),
    OnboardingPage(
      image: 'assets/onboarding/splash3.png',
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
            children: pages.map(buildPage).toList(),
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    minimumSize: const Size(double.infinity, 50.0),
                    backgroundColor: pages[_currentPage].buttonColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 12.0),
                  ),
                  onPressed: () {
                    if (_currentPage < pages.length - 1) {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()));
                    }
                  },
                  child: Text(
                      _currentPage == pages.length - 1 ? 'Get Started' : 'Next',
                      style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 20.0),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: pages.length,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: pages[_currentPage].buttonColor,
                    expansionFactor: 4,
                    dotHeight: 5.0,
                    dotWidth: 8.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage(OnboardingPage page) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(page.image), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 10),
            Text(page.title,
                style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: page.buttonColor)),
            const SizedBox(height: 16.0),
            Text(page.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: Colors.white)),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
