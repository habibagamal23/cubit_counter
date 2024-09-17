import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';

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
                "hello",
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(
                    'Counter Value: ${context.read<CounterCubit>().counter}',
                    style: const TextStyle(fontSize: 32),
                  );
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterCubit>().increment();
                },
                child: const Text('Increment'),
              ),
            ],
          ),
        ));
  }
}
