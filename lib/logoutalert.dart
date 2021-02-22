import 'package:brain_store/Loginandregister/screens/login-screen.dart';
import 'package:brain_store/services/auth.dart';
import 'package:flutter/material.dart';

AuthServices auth = AuthServices();

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text(
      "Cancel",
      style: TextStyle(color: Colors.black),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = FlatButton(
    child: Text(
      "Logout",
      style: TextStyle(color: Colors.orange),
    ),
    onPressed: () async {
      auth.signOut().then(
            (value) => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false
            ),
          );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Warning"),
    content: Text("This will log you out of the app. Are you sure?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    // barrierColor: Colors.black,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
