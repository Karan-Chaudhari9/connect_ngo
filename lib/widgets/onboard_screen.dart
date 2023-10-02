import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  final List<OnboardingPage> pages = [
    const OnboardingPage(
      title: "Welcome to Food Donation",
      description: "Help us reduce food waste by donating to those in need.",
      animationAsset:
          'assets/lottie/help.zip', // Replace with your animation asset
    ),
    const OnboardingPage(
      title: "How It Works",
      description: "Easily donate surplus food from your home or business.",
      animationAsset:
          'assets/lottie/splash_Screen.zip', // Replace with your animation asset
    ),
    const OnboardingPage(
      title: "Make a Difference",
      description: "Join us in the fight against hunger and food waste.",
      animationAsset:
          'assets/lottie/OnBoard.zip', // Replace with your animation asset
    ),
  ];

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String animationAsset;

  const OnboardingPage(
      {required this.title,
      required this.description,
      required this.animationAsset,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          animationAsset,
          width: 300, // Adjust the width of the animation
          height: 300, // Adjust the height of the animation
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40),
        if (animationAsset == 'assets/lottie/OnBoard.zip')
          ElevatedButton(
            onPressed: () {
              // Navigate to the main screen
              Navigator.pushReplacementNamed(context, '/auth');
            },
            child: const Text("Get Started"),
          ),
      ],
    );
  }
}
