import 'package:flutter/material.dart';
import 'package:state_mang/core/routes.dart';
import 'features/registration_news/presention/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'News App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: AppRoutes().onGenerateRoute,
        home: LoginScreen());
  }
}
