import 'package:flutter/material.dart';

import '../features/home_news/presentions/home_screen.dart';
import '../features/registration_news/presention/login_screen.dart';
import '../features/registration_news/presention/registration_screen.dart';

class AppRoutes {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case '/register':
        return MaterialPageRoute(builder: (context) => RegisterScreen());
      case '/home':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return null;
    }
  }
}
