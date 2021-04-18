import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate('title')),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add contact',
        child: Icon(Icons.add),
      ),
    );
  }
}
