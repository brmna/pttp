import 'package:flutter/material.dart';
import 'presentation/screens/splash_screen.dart';
import 'presentation/screens/terms_screen.dart';
import 'presentation/screens/get_started_screen.dart';
import 'presentation/screens/language_screen.dart';
import 'presentation/screens/location_screen.dart';

void main() {
  runApp(const BeautyApp());
}

class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beauty App',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/terms': (context) => const TermsScreen(),
        '/get-started': (context) => const GetStartedScreen(),
        '/language': (context) => const LanguageScreen(),
        '/location': (context) => const LocationScreen(),
      },
    );
  }
}
