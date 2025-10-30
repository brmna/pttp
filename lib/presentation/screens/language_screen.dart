import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String selected = '';

  final languages = {
    "English (US)": "🇺🇸",
    "English (UK)": "🇬🇧",
    "Spanish": "🇪🇸",
    "Chinese": "🇨🇳",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5DC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Select your Language",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text("Welcome, let’s dive into your account"),
            const SizedBox(height: 16),
            for (var entry in languages.entries)
              Card(
                color: selected == entry.key ? Colors.pink[100] : Colors.white,
                child: ListTile(
                  title: Text(entry.key),
                  trailing: Text(entry.value, style: const TextStyle(fontSize: 20)),
                  onTap: () {
                    setState(() => selected = entry.key);
                  },
                ),
              ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              child: const Text("Sign in as guest"),
            ),
          ],
        ),
      ),
    );
  }
}
