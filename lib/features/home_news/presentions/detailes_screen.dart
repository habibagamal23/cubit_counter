import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {

  String title;
  String desc;
  DetailsScreen(this.title ,this.desc);

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
            title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              desc,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
