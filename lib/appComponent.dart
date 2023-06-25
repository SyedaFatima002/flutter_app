import 'package:flutter/material.dart';

class app extends StatelessWidget {
  late app application;

  app({required this.application});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(application.getName()),
        subtitle: Text("Description: " + application.getDescription()),
      ),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      color: Colors.green[100],
    );
  }
}
