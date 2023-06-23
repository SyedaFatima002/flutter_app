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
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: 'Incoming',
                ),
                Tab(
                  text: 'Outgoing',
                ),
                Tab(
                  text: 'Missed',
                ),
              ],
            )
          ],
        ),
      ),
      body: TabBarView(
        children: [
          // IncomingPage(),
          // OutgoingPage(),
          // MissedPage(),
        ],
      ),
    );
  }
}
