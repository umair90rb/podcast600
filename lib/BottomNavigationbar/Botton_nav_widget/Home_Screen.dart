import 'package:brain_store/BottomNavigationbar/categories_page/Beauty.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/Emotional.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/Entrepreneurship.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/Investment.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/Legal.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/Nutrition.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/Relationship.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/Travel.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/carrierandedu.dart';
import 'package:brain_store/BottomNavigationbar/categories_page/work_per.dart';
import 'package:brain_store/active_podcaster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selectable_container/selectable_container.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic selected = [];
  bool relationship = false;
  bool nutrition = false;
  bool beauty = false;
  bool career = false;
  bool work = false;
  bool entrepreneurship = false;
  bool travel = false;
  bool investment = false;
  bool legal = false;
  bool emotional = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Container(
          child: SingleChildScrollView(
            child: Column(children: [
              Column(
                children: [
                  Stack(children: <Widget>[
                    Image.asset(
                      "assets/images/splashscreen.jpg",
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 12, top: 80),
                        child: Text(
                          "What's your goal?",
                          style: TextStyle(
                              color: Color.fromRGBO(22, 49, 78, 1),
                              fontSize: 35,
                              fontFamily: "Poppins"),
                        )),
                    Container(
                        padding: EdgeInsets.only(left: 12, top: 130),
                        child: Text(
                          "Easy to develop gratitude",
                          style: TextStyle(
                            color: Color.fromRGBO(22, 49, 78, 1),
                            fontSize: 20,
                            fontFamily: "Poppins",
                          ),
                        )),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: relationship,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-01.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Relationship",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            relationship = !relationship;
                          });
                        },
                      ),
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: nutrition,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-07.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Nutrition",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            nutrition = !nutrition;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: beauty,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-06.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Beauty",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            beauty = !beauty;
                          });
                        },
                      ),
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: career,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-05.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  " Career &\nEducation",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            career = !career;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: work,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-03.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Work &\nProfession",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            work = !work;
                          });
                        },
                      ),
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: entrepreneurship,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-04.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Entrepreneurship",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            entrepreneurship = !entrepreneurship;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: travel,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-02.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Travel",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            travel = !travel;
                          });
                        },
                      ),
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: investment,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-08.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Investment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            investment = !investment;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: legal,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-09.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Legal",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            legal = !legal;
                          });
                        },
                      ),
                      SelectableContainer(
                        selectedBorderColor: Colors.orange,
                        selectedBackgroundColor: Colors.transparent,
                        unselectedBorderColor: Colors.transparent,
                        unselectedBackgroundColor: Colors.transparent,
                        iconAlignment: Alignment.topRight,
                        icon: Icons.check,
                        iconSize: 20,
                        unselectedOpacity: 0.9,
                        selected: emotional,
                        child: Container(
                          height: size.height * 0.30,
                          width: size.width * 0.38,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/illustration 9-01.png",
                                  scale: 20,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Emotional",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Just vent it out"),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            emotional = !emotional;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      selected.clear();
                      relationship ? selected.add('"Relationship"') : null ;
                      nutrition ? selected.add('"Nutrition"') : null ;
                      beauty ? selected.add('"Beauty"') : null ;
                      career ? selected.add('"Career"') : null ;
                      work ? selected.add('"Work"') : null ;
                      entrepreneurship ? selected.add('"Entrepreneurship"') : null ;
                      travel ? selected.add('"Travel"') : null ;
                      investment ? selected.add('"Investment"') : null ;
                      legal ? selected.add('"Legal"') : null ;
                      emotional ? selected.add('"Emotional"') : null ;
                      // print(selected);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ActivePodcaster(selected)));
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(50, 219, 208, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
