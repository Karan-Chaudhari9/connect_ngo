import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate some background work here
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12, // Background color of the splash screen
      body: Center(
        child: Image.asset(
          'assets/images/ConnectNGO-logos_white.png',
          width: 200, // Adjust the width of the image
          height: 200, // Adjust the height of the image
        ),
      ),
    );
  }
}
