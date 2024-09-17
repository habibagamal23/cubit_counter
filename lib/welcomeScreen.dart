import 'package:flutter/material.dart';
    // Assuming this is where the DataScreen is defined

class WelcomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/counter');
              },
              child: const Text("Go to Counter"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/data');
              },
              child: const Text("Go to Data"),
            ),
          ],
        ),
      ),
    );
  }
}
