import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/welcomeScreen.dart';

import 'counter/counter_screen.dart';
import 'counter/cubit/counter_cubit.dart';
import 'data/dataScreen.dart';
import 'data/data_cubit.dart';
import 'data/profilescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DataCubit>(
          create: (context) => DataCubit(),
        ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Multi Cubit Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomScreen(),
          '/counter': (context) => CounterScreen(),
          '/data': (context) => Datascreen(),
          '/profile' : (context) => ProfileScreen(),

        },
      ),
    );
  }
}
