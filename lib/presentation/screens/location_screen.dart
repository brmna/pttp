import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

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
            const Text("Choose your Location",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text("Search or use your current location."),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: "Search your location",
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.location_on_outlined),
              label: const Text("Set Location"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFF5E4),
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 24),
            Container(
              height: 150,
              color: Colors.grey[300],
              child: const Center(child: Text("Map Preview")),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFD4D4),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {},
              child: const Text("Use Current Location"),
            ),
          ],
        ),
      ),
    );
  }
}
