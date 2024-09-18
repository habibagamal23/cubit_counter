import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/counter_cubit.dart';

import 'cardwidget.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Counter Example")),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Card 1 with its own CounterCubit
           BlocProvider(create: (_)=> CounterCubit() ,
           child: CounterCard(title: "Card 1"),
           )
            ,
            SizedBox(height: 20),
            // Card 2 with its own CounterCubit
            BlocProvider(create: (_)=> CounterCubit() ,
              child: Column(
                children: [
                  CounterCard(title: "Card 2"),
                CounterCard(title: "card 3"),

                ],
              )


            ) ,



          ],
        ),
      ),
    );
  }
}


