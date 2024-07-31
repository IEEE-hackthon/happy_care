import 'package:flutter/material.dart';

import '../../models/onboarding_page_model.dart';
import '../../views/login_page.dart';

class OnboardingButtonWidget extends StatelessWidget {
  final PageController pageController;
  final int currentPage;
  final List<OnboardingPage> pages;

  const OnboardingButtonWidget({
    super.key,
    required this.pageController,
    required this.currentPage,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        minimumSize: const Size(double.infinity, 50.0),
        backgroundColor: pages[currentPage].buttonColor,
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
      ),
      onPressed: () {
        if (currentPage < pages.length - 1) {
          pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LogInPage()));
        }
      },
      child: Text(currentPage == pages.length - 1 ? 'Get Started' : 'Next',
          style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.w500)),
    );
  }
}
