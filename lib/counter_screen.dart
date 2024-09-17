import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/cubit/show_screen.dart';

import 'cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
var con = context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text("Cubit Counter Example")),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Counter Value: ${ con.counter}',
                  style: const TextStyle(fontSize: 48),
                ),
                TextButton(

                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShowScreen()));
                  },
                  child: Text("go" ,style: TextStyle(fontSize: 50),),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () =>  context.read<CounterCubit>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
