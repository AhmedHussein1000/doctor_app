import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter().generateRoute,
      home: const OnboardingScreen(),
    );
  }
}
