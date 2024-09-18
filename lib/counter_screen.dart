import 'package:flutter/material.dart';
import 'package:state_mang/show_screen.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Counter Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value: 1',
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 20), // Add space between elements
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShowScreen()));
              },
              child: const Text("Go to Next Screen",
                  style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
