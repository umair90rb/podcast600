import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PodcasterProfile extends StatefulWidget {
  DocumentSnapshot podcaster;
  PodcasterProfile(this.podcaster);
  @override
  _PodcasterProfileState createState() => _PodcasterProfileState();
}

class _PodcasterProfileState extends State<PodcasterProfile> {

  TextStyle textStyle = TextStyle(
      fontSize: 20
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.only(left: 12, top: 30),
              child: Text(
                "Podcaster Profile",
                style: TextStyle(
                    color: Color.fromRGBO(22, 49, 78, 1),
                    fontSize: 35,
                    fontFamily: "Poppins"),
              )),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
            Image.asset(
              "assets/images/splashscreen.jpg",
            ),
            Positioned(
              top: 30,
              child: Icon(
                FontAwesomeIcons.userCircle,
                size: 100,
              ),
            ),

              Positioned(
                top: 140,
                child: Text(widget.podcaster.data().containsKey('name') ? widget.podcaster['name'] : widget.podcaster['email'],
                  style: textStyle
                ),
              ),
          ]
          ),
          Text('Charges', style: textStyle,),
          SizedBox(height: 10,),
          Chip(label: Text(widget.podcaster.data().containsKey('charges') ? "\$${widget.podcaster['charges']}" : '\$0', style: textStyle,)),
          Text('Experties', style: textStyle,),
          SizedBox(height: 10,),
          Text(widget.podcaster['experties'], style: textStyle,),
          SizedBox(height: 10,),
          Text('Review', style: textStyle,),
          ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.userCircle, size: 25,),
                              SizedBox(width: 10,),
                              Text('User Name')
                            ],
                          ),
                          SizedBox(height: 15,),
                          Text('here is the user review'),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder:(context, index){
                return Divider();
              },
              itemCount: 1,
          )
        ],
      ),
    );
  }
}
