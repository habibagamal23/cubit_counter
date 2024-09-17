import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data_cubit.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: BlocBuilder<DataCubit, DataState>(
          builder: (context, state) {
            if (state is ProfileLoaded) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Username: ${context.read<DataCubit>().userName}",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              );
            } else {
              return Text("No username provided");
            }
          },
        ),
      ),
    );
  }
}
