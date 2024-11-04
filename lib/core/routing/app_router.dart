// This AppRouter class defines the app's route generation logic.
// It provides a way to navigate to different screens based on route names.
import 'package:flutter/material.dart';
import 'package:new_project/core/routing/routes.dart';
import '../../features/login/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This variable holds any arguments passed to the screen
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No Route Defined For ${settings.name}'),
              ),
            ));
    }
  }
}
