import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'item_cubit.dart';
import 'item_model.dart';

class HomeScreenItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemCubit()..funloaditem(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Item List'),
          centerTitle: true,
        ),
        body: ItemListBody(),
      ),
    );
  }
}

class ItemListBody extends StatelessWidget {
  ItemListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemCubit, ItemState>(
      builder: (context, state) {
        if (state is ItemLoading) {
          return CircularProgressIndicator();
        } else if (state is Itemloaded) {
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(state.items[index].name),
                  subtitle: Text(state.items[index].des),
                ),
              );
            },
          );
        } else if (state is Itemfalier) {
          return Text(state.error);
        }

        return Container();
      },
    );
  }
}
