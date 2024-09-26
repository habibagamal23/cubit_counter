import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/core/routes.dart';
import 'package:state_mang/features/home_news/logic/news_cubit.dart';
import 'package:state_mang/features/home_news/presentions/home_screen.dart';
import 'package:state_mang/features/registration_news/logic/registrion_cubit.dart';
import 'package:state_mang/test/home_screen.dart';
import 'features/registration_news/presention/login_screen.dart';
import 'features/registration_news/presention/registration_screen.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => RegistrionCubit()..checklogin()),
    BlocProvider(create: (_) => NewsCubit()..loaded())
  ], child: MyApp()));
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
        home: BlocBuilder<RegistrionCubit, RegistrionState>(
            builder: (context, state) {
          if (state is Signin) {
            return HomeScreen();
          } else if (state is Signup) {
            return RegisterScreen();
          } else if (state is Logout) {
            return LoginScreen();
          }
          return Container();
        }));
  }
}
