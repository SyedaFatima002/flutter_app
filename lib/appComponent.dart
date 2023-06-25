import 'package:flutter/material.dart';
import 'package:flutter_app/app.dart';

class App extends StatefulWidget {
  const App({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

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
