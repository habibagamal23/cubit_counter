import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/test/home_screen.dart';
import '../logic/registrion_cubit.dart';

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: BlocListener<RegistrionCubit, RegistrionState>(
        listener: (context, state) {
          if (state is Registfaliuer) {
            _showErrorDialog(context, state.err);
            context.read<RegistrionCubit>().logoutfun();
            usernameController.clear();
            passwordController.clear();
          }
        },
        child: BodyofLogin(),
      ),
    );
  }
}

class BodyofLogin extends StatelessWidget {
  BodyofLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<RegistrionCubit>().login(
                usernameController.text,
                passwordController.text,
              );
              usernameController.clear();
              passwordController.clear();
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
