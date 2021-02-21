import 'package:brain_store/BottomNavigationbar/Botton_nav_widget/profile.dart';
import 'package:flutter/material.dart';

class Paymenthistory extends StatelessWidget {
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
          "Payment History",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text("You have no payments done"),
      ),
    );
  }
}
