import 'package:flutter/material.dart';

class HomeScreenItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
        centerTitle: true,
      ),
      body: const ItemListBody(), // Body extracted into a separate widget
    );
  }
}

class ItemListBody extends StatelessWidget {
  const ItemListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10),
        child: ListTile(
          title: Text("item 1"),
        ));
  }
}
