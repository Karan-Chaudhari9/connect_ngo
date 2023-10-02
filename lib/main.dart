import 'package:connect_ngo/widgets/auth_screen.dart';
import 'package:connect_ngo/widgets/donation_form_screen.dart';
import 'package:connect_ngo/widgets/home_screen.dart';
import 'package:connect_ngo/widgets/onboard_screen.dart';
import 'package:connect_ngo/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/donate': (context) => const DonationFormScreen(),
        '/ngo_agent': (context) => const DonationFormScreen(),
        '/auth': (context) => const InvitationAuthPage(),
      },
    );
  }
}
