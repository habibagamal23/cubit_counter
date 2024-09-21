import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: Newsbody(),
    );
  }
}

class Newsbody extends StatelessWidget {
  const Newsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
