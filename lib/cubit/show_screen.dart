import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class ShowScreen extends StatelessWidget {
  const ShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = context.read<CounterCubit>();

    return Scaffold(
        appBar: AppBar(title: const Text("Cubit Counter Example")),
        body: Center(
          child: BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' ${counterCubit.counter}',
                    style: const TextStyle(fontSize: 48),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
