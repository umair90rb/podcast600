import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/Home_Screen.dart';
import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/postcast.dart';
import 'package:flutter/material.dart';

import 'Botton_nav_widget/profile.dart';

class BottomNavigationPage extends StatefulWidget {
  BottomNavigationPage({Key key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    Podcast(),
    Home(),
    BottomProfile(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        selectedItemColor: Colors.orange,
        // fixedColor: Color.fromRGBO(50, 219, 208, 1),
        backgroundColor: Colors.white,
        iconSize: 25,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.music_note),
            title: new Text("Podcasts"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              // color: Colors.orange,
              size: 30,
            ),
            title: new Text(
              "Home",
              // style: TextStyle(color: Colors.orange),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            // ignore: deprecated_member_use
            title: new Text("Profile"),
          ),
        ],
      ),
    );
  }
}
