import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/counter_cubit.dart';

class CounterCard extends StatelessWidget {
  final String title;

  const CounterCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            BlocBuilder<CounterCubit, CounterState>(builder: (context, state) {
              return Text(
                'Counter Value:${context.read<CounterCubit>().counter} ',
                style: const TextStyle(fontSize: 32),
              );
            }),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().incr();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
