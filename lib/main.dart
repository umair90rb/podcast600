import 'package:brain_store/services/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_splashscreen/simple_splashscreen.dart';
import 'Splash_screen/intropages.dart';
// import './square/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
//
// void main() => runApp(MaterialApp(
//   title: 'Super Cookie',
//   home: HomeScreen(),
// ));


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<User>.value(value: AuthServices().user),
      ],
      child: MaterialApp(
        title: "Comrade",
        debugShowCheckedModeBanner: false,

        home: Splash(),
      ),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Simple_splashscreen(
      context: context,
      gotoWidget: Landing(),
      splashscreenWidget: SplashScreen(),
      timerInSeconds: 5,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/2897938.jpg",
                fit: BoxFit.cover,
              ),
              // Positioned(
              //   left: 70,
              //   child: Text(
              //     "Comrade",
              //     style: TextStyle(
              //       fontFamily: "Dancing Script",
              //       color: Colors.pink,
              //       fontSize: 40,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
