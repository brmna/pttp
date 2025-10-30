import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E4),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "B",
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Get Started",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Welcome, let’s dive into your account",
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {},
              child: const Text("Sign in with Facebook"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[200],
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {},
              child: const Text("Sign in with Email"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink[100],
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/language');
              },
              child: const Text("Sign in as guest"),
            ),
            const SizedBox(height: 16),
            const Text("Don't have an account? Sign up"),
          ],
        ),
      ),
    );
  }
}
