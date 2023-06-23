import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page1.dart';
import 'package:flutter_app/page2.dart';
import 'package:flutter_app/page3.dart';

class topbar extends StatefulWidget {
  const topbar({super.key, required this.title});

  final String title;

  @override
  State<topbar> createState() => _topbarState();
}

class _topbarState extends State<topbar> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              MyHomePage(title: 'Page 1',),
              Page2(title: 'Page 2'),
              Page3(title: 'Page 3'),
              // Icon(Icons.directions_car),
              // Icon(Icons.directions_transit),
              // Icon( Icons.directions_bike),
            ],
          ),
        ),
      ),
      
    );
  }
}