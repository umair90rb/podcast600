import 'package:flutter/material.dart';

class Accountdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => BottomProfile()));
        //   },
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),
        // ),
        title: Text(
          "Account Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'First Name',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 0,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'Rid',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        trailing: Text(
                          "EDIT",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SettingProfile()),
                          // );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Last Name',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 0,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'Ro',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
                        ),
                        trailing: Text(
                          "EDIT",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SettingProfile()),
                          // );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Email Address',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 0,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'radicapro9@gmail.com',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
                        ),
                        trailing: Text(
                          "EDIT",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SettingProfile()),
                          // );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Password (8+ Characters)',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 0,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          '********',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
                        ),
                        trailing: Text(
                          "EDIT",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SettingProfile()),
                          // );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'My buddy link',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 0,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'My buddy link',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
                        ),
                        trailing: Text(
                          "CHANGE",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SettingProfile()),
                          // );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
