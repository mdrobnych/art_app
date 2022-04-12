import 'package:flutter/material.dart';
import 'pages/explore.dart';
import 'pages/gallery.dart';
import 'pages/page3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    Explore(),
    Gallery(),
    Page3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(
          'Art App',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Auction',
          ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
