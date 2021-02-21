import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/postcast.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Search Podcast",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Podcast()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.only(),
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                cursorColor: Colors.orange,
                cursorWidth: 1.5,
                decoration: InputDecoration(
                  labelText: "Type something...",
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.transparent,
                  focusColor: Colors.orange,
                  hoverColor: Colors.orange,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.all(18),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
                keyboardType: TextInputType.text,
                style: new TextStyle(
                    fontFamily: "Poppins", fontSize: 16, color: Colors.black),
              ),
            ],
          )),
    );
  }
}
