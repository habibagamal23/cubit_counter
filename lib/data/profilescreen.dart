import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/data/cubit/data_cubit.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<DataCubit, DataState>(builder: (context, state) {
            return Text(
              "your username is : ${context.read<DataCubit>().username}",
              style: TextStyle(fontSize: 24),
            );
          })
        ],
      )),
    );
  }
}
