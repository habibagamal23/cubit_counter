import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/data/cubit/data_cubit.dart';

class Datascreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter Username")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Enter your username',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               final username =_usernameController.text;
                if(username.isNotEmpty){
                  context.read<DataCubit>().Setusername(username);
                  Navigator.pushNamed(context, '/profile');

                }

              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
