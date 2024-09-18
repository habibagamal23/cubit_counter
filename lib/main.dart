import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cubit Counter Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterScreen(), // The CounterScreen is the home screen

    );
  }
}
