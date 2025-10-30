import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Espera 3 segundos y navega a la siguiente pantalla
    Future.delayed(const Duration(seconds: 20), () {
      Navigator.pushReplacementNamed(context, '/terms');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          '/assets/images/splash.png',
          fit: BoxFit.cover, // ocupa toda la pantalla
        ),
      ),
    );
  }
}
