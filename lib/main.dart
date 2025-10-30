import 'package:flutter/material.dart';
import 'core/theme/app_colors.dart';
import 'core/routes/app_routes.dart';
import 'presentation/screens/splash/splash_screen.dart';
import 'presentation/screens/onboarding/onboarding_screen.dart';
import 'presentation/screens/auth/get_started_screen.dart';
import 'presentation/screens/auth/sign_in_screen.dart';
import 'presentation/screens/auth/sign_up_screen.dart';
import 'presentation/screens/language/language_selection_screen.dart';
import 'presentation/screens/location/location_screen.dart';

void main() {
  runApp(const BeautyApp());
}

class BeautyApp extends StatelessWidget {
  const BeautyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beauty App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.onboarding: (context) => const OnboardingScreen(),
        AppRoutes.getStarted: (context) => const GetStartedScreen(),
        AppRoutes.signIn: (context) => const SignInScreen(),
        AppRoutes.signUp: (context) => const SignUpScreen(),
        AppRoutes.language: (context) => const LanguageSelectionScreen(),
        AppRoutes.location: (context) => const LocationScreen(),
        // TODO: Add more routes as needed
        // AppRoutes.home: (context) => const HomeScreen(),
      },
    );
  }
}