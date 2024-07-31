import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/onboarding_page_model.dart';

class OnboardingIndicatorWidget extends StatelessWidget {
  final PageController pageController;
  final int currentPage;
  final List<OnboardingPage> pages;

  const OnboardingIndicatorWidget({
    super.key,
    required this.pageController,
    required this.currentPage,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: pages.length,
      effect: ExpandingDotsEffect(
        dotColor: Colors.grey,
        activeDotColor: pages[currentPage].buttonColor,
        expansionFactor: 4,
        dotHeight: 5.0,
        dotWidth: 8.0,
      ),
    );
  }
}
