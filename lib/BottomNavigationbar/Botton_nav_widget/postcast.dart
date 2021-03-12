import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/Profile_sub_screens/subprofile.dart';
import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/profile.dart';
import 'package:brain_store/musicpage.dart';
import 'package:brain_store/musicplayer.dart';
import 'package:brain_store/searchpage.dart';
import 'package:brain_store/services/db_services.dart';
import 'package:brain_store/tab_view_widget/tab.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class Podcast extends StatefulWidget {
  Podcast({Key key}) : super(key: key);

  @override
  _PodcastState createState() => _PodcastState();
}

class _PodcastState extends State<Podcast> with SingleTickerProviderStateMixin {

  DbServices _db = DbServices();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Subprofile()));
          },
          icon: Icon(
            Icons.person_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height / 3,
                width: size.width / 1,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/hhhhf.jpg'),
                    fit: BoxFit.cover,
                  ),
//                border: Border.all(
//                  color: Colors.black,
//                  width: 8,
//                ),
//                borderRadius: BorderRadius.only(
//                  bottomRight: Radius.circular(80),
//                  bottomLeft:  Radius.circular(80),
//                ),
                ),
              ),
              Container(
//                height: size.height * 0.2,
                width: size.width / 1,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "Featured",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(letterSpacing: 1.5, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Start Your New Year",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            "Right",
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.music_note_sharp,
                            color: Colors.black,
                          ),
                          // SizedBox(
                          //   width: 2,
                          // ),
                          Text(
                            "• Focus Meditation • 10 min",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print('featured podcast playing');
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => MusicPlayerScreen()),
                        // );
                      },
                      child: Container(
                        height: 45,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Play",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
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
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Explore Podcasts',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              FutureBuilder(
                  future: _db.getSnapshot('podcasts'),
                  builder: (context, snapshot){
                    if(snapshot.hasData){
                      List<DocumentSnapshot> podcasts = snapshot.data;
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: podcasts.length,
                        itemBuilder: (context, index){
                          print(podcasts[index].data());
                          return podcastTile(podcasts[index], context);
                        },
                      );
                    }
                    if(snapshot.hasError){
                      return Text('Something goes wrong while fetching podcasts!');
                    }
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
              ),


            ],
          ),
        ),
      ),
    );
  }


  Widget podcastTile(dynamic podcast, context) {
    print(podcast);
    return Card(
      color: Colors.white70,
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => MusicPage(podcast))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading:
              Icon(Icons.album, size: 50, color: Colors.black),
              title: Text(podcast['name']),
              subtitle: Text(podcast['description']),
            ),
          ],
        ),
      ),
    );
  }
}
