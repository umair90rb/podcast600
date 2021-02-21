import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/postcast.dart';
import 'package:brain_store/musicplayer.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        child: Column(children: <Widget>[
          Container(
            width: 600,
            height: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.transparent, width: 0),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/hhhhf.jpg',
                    ),
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Podcast())),
                      child: ClipOval(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            //   child: Container(
            //     child: Card(
            //       shape: RoundedRectangleBorder(
            //         side: BorderSide(color: Colors.white70, width: 0),
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       child: Image.asset("assets/background.png"),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // SizedBox(height: 30),
            // Padding(
            //   padding: EdgeInsets.only(left: 5),
            //   child: ListTile(
            //     title: Text(
            //       'Lo-Fi Times',
            //       style: TextStyle(
            //         fontSize: 40,
            //         // fontWeight: FontWeight.bold,
            //         fontFamily: "Poppins",
            //         color: Colors.black,
            //       ),
            //     ),
            //     trailing: FavoriteButton(
            //       isFavorite: true,
            //       iconSize: 40,
            //       iconColor: Colors.red,
            //       valueChanged: (_isFavorite) {
            //         print('Is Favorite : $_isFavorite');
            //       },
            //     ),
            //   ),
            // ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: ListTile(
              title: Text(
                'Lo-Fi Times',
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: "Poppins",
                  color: Colors.black,
                ),
              ),
              trailing: FavoriteButton(
                isFavorite: true,
                iconSize: 40,
                iconColor: Colors.red,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(children: <Widget>[
              Icon(
                Icons.music_note,
              ),
              Text(" • Develop Focus on Meditation Podcast • 95 min")
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Text(
                  "In this podcast ways of meditiation is \ntold that will help to sooth out things.",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 80),
          Container(
            child: ButtonTheme(
              minWidth: 300.0,
              // height: 50.0,
              child: RaisedButton(
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: EdgeInsets.all(6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "Play",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MusicPlayerScreen()),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
