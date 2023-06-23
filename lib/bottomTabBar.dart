import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page1.dart';
import 'package:flutter_app/page2.dart';
import 'package:flutter_app/page3.dart';

class bottomTabBar extends StatefulWidget {
  const bottomTabBar({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<bottomTabBar> createState() => _bottomTabBarState();
}

class _bottomTabBarState extends State<bottomTabBar> {
  int _currentIndex = 0;
  late List<Widget> _tabPages = [];

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];
  
  @override
  void initState() {
    super.initState();
    _tabPages = [
      MyHomePage(title: 'Page 1',),
      Page2(title: 'Page 2'),
      Page3(title: 'Page 3'),
    ];
  }

  // page1() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Page 1',)),
  //   );
  // }
  // page2() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const Page2(title: 'Page 2',)),
  //   );
  // }
  // page3() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const Page3(title: 'Page 3',)),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: IndexedStack(
      //   index: _currentIndex,
      //   children: _pages,
      // ),
      body: Center(
          child: _tabPages.elementAt(_currentIndex), //New
          
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(26, 34, 32, 32),
        elevation: 0,
        iconSize: 40,
        mouseCursor: SystemMouseCursors.grab,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: const Color.fromARGB(255, 88, 160, 112), size: 40),
        selectedItemColor: Color.fromARGB(255, 88, 160, 112),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: IconThemeData(
          color: Color.fromARGB(255, 83, 80, 79),
        ),
        unselectedItemColor: const Color.fromARGB(255, 238, 234, 233),
        showSelectedLabels: true,
        showUnselectedLabels: false,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
