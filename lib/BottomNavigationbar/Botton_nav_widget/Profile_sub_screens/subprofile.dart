import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/Profile_sub_screens/journey.dart';
import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/Profile_sub_screens/stats.dart';
import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/postcast.dart';
import 'package:flutter/material.dart';

import '../profile.dart';
import 'buddylinks.dart';

class Subprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Podcast()));
            },
            icon: Icon(
              Icons.close_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomProfile()));
              },
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 80.0,
                    color: Colors.black,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Account Name',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.square(150.0),
            child: TabBar(
              labelColor: Colors.black,
               indicatorColor: Colors.black,
              tabs: [
                Tab(
                  text: "Buddies",
                ),
                Tab(
                  text: "Stats",
                ),
                Tab(
                  text: "Journey",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          Buddylinks(),
          Stats(),
          Journey(),
        ]),
      ),
    );
  }
}
