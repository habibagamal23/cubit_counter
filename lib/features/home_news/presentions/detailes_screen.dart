import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
