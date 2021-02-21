import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/profile.dart';
import 'package:brain_store/settings/paymenthistory.dart';
import 'package:brain_store/settings/privacypolicy.dart';
import 'package:brain_store/settings/support.dart';
import 'package:brain_store/settings/termsandconfitionspage.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class Languages extends StatefulWidget {
  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
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
        backgroundColor: Colors.white,
        title: Text(
          "Language",
          style: TextStyle(
            // fontFamily: 'Abril Fatface',
            color: Colors.black,
            fontSize: 28.0,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Center(
                child: Container(
                  child: Text(
                    "Choose Language:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'Deutsch',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
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
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'English',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
                        ),
                        trailing: Image.asset(
                          "assets/images/tick.png",
                          scale: 2,
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
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'Espanol',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
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
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'Francias',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
                        ),
                        // trailing: Icon(
                        //   Icons.arrow_forward_ios,
                        //   color: Colors.black54,
                        // ),
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Paymenthistory()),
                        // );
                        // },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        selectedTileColor: Colors.white,
                        tileColor: Colors.white,
                        title: Text(
                          'Portugues',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          // textScaleFactor: 1.5,
                        ),
                        // trailing: Icon(
                        //   Icons.arrow_forward_ios,
                        //   color: Colors.black54,
                        // ),
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => Support()),
                        //   );
                        // },
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
