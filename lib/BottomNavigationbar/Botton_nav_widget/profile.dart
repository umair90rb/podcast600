import 'package:brain_store/settings/accountdetails.dart';
import 'package:brain_store/settings/invite.dart';
import 'package:brain_store/settings/language.dart';
import 'package:brain_store/settings/paymenthistory.dart';
import 'package:brain_store/settings/privacypolicy.dart';
import 'package:brain_store/settings/termsandconfitionspage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nice_button/NiceButton.dart';

import '../../logoutalert.dart';

class BottomProfile extends StatefulWidget {
  BottomProfile({Key key}) : super(key: key);

  @override
  _BottomProfileState createState() => _BottomProfileState();
}

class _BottomProfileState extends State<BottomProfile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                            'Account Details',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            // textScaleFactor: 1.5,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Accountdetails()),
                            );
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
                            'Invite Friends',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            // textScaleFactor: 1.5,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Invitefriends()),
                            );
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
                            'Language',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            // textScaleFactor: 1.5,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Languages()),
                            );
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
                            'Payment History',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            // textScaleFactor: 1.5,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Paymenthistory()),
                            );
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
                            'Support',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            // textScaleFactor: 1.5,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                          ),
                          onTap: () async {
                            if (await canLaunch("https:google.com/")) {
                              await launch("https:google.com/");
                            }
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
                            'Terms & Conditions',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            // textScaleFactor: 1.5,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Termsandconditions()),
                            );
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
                            'Privacy Policy',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            // textScaleFactor: 1.5,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black54,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy()),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text("Logged in as"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text("tester123@gmail.com"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text("Version 1.1.0"),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              NiceButton(
                width: size.width * 0.8,
                radius: 10,
                padding: const EdgeInsets.all(15),
                text: "LOG OUT",
                fontSize: 16,
                gradientColors: [Colors.blueGrey[500], Colors.blueGrey[500]],
                onPressed: () {
                  Navigator.pop(showAlertDialog(context));
                },
                background: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
