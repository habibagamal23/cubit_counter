import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/cubit/show_screen.dart';

import 'cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Counter Example")),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Counter Value: ${BlocProvider.of<CounterCubit>(context).counter}',
                  style: const TextStyle(fontSize: 48),
                ),
                const SizedBox(height: 20), // Add space between elements
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShowScreen()));
                  },
                  child: const Text("Go to Next Screen", style: TextStyle(fontSize: 20)),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => BlocProvider.of<CounterCubit>(context).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
