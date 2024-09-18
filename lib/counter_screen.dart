import 'package:flutter/material.dart';

import 'cardwidget.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Counter Example")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Card 1 with its own CounterCubit
            CounterCard(title: "Card 1"),
            SizedBox(height: 20),
            // Card 2 with its own CounterCubit
            CounterCard(title: "Card 2"),
          ],
        ),
      ),
    );
  }
}


