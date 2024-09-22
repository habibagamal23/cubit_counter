import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mang/features/home_news/logic/news_cubit.dart';
import 'package:state_mang/features/registration_news/logic/registrion_cubit.dart';
import 'package:state_mang/features/registration_news/presention/login_screen.dart';

import 'detailes_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              context.read<RegistrionCubit>().logoutfun();
            },
          ),
        ],
      ),
      body: Newsbody(),
    );
  }
}

class Newsbody extends StatelessWidget {
  const Newsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(builder: (context, state) {
      if (state is NewsLoaded) {
        return ListView.builder(
            itemCount: state.my.length,
            itemBuilder: (context, index) {
              return TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                              state.my[index].title, state.my[index].des)));
                },
                child: Text(state.my[index].title),
              );
            });
      }if (state is NewsLoading){
        return CircularProgressIndicator();
      }
      return Container();
    });
  }
}
