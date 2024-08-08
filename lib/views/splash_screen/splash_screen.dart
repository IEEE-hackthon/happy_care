import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:save_environment/views/onboarding_page/onboarding_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color(0xff99BA60),
      duration: 5000,
      splashIconSize: 400,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: LottieBuilder.asset(
              "assets/Lottie/Animation_FF9800.json",
              repeat: true,
            ),
          ),
        ],
      ),
      nextScreen: const OnboardingScreen(),
    );
  }
}
