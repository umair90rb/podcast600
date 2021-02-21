import 'package:brain_store/BottomNavigationbar/BottomNatigation_page.dart';
import 'package:brain_store/loginandregister/termsnpolicy.dart';
import 'package:brain_store/services/auth.dart';
import 'package:brain_store/services/db_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:progress_dialog/progress_dialog.dart';

import 'login-screen.dart';

class CreateNewAccount extends StatefulWidget {
  CreateNewAccount({Key key}) : super(key: key);

  @override
  _CreateNewAccountState createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = true;
  AuthServices auth = AuthServices();
  DbServices db = DbServices();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SafeArea(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
//                        fontFamily: "Abril Fatface",
                            //  fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 17,
//                        fontFamily: "Abril Fatface",
                              //  fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, right: 185, left: 20),
                  child: Container(
                    child: Text(
                      "Let's get started",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: TextFormField(
                    controller: firstName,
                    cursorColor: Colors.orange,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Your First Name';
                      }
                      return null;
                    },
                    cursorWidth: 1.5,
                    decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: TextFormField(
                    controller: lastName,
                    cursorColor: Colors.orange,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Your Last Name';
                      }
                      return null;
                    },
                    cursorWidth: 1.5,
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      fillColor: Colors.transparent,
                      labelStyle: TextStyle(color: Colors.black),
//                      prefixIcon: Icon(Icons.email),
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: TextFormField(
                    controller: age,
                    cursorColor: Colors.orange,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Your Correct Age';
                      }
                      return null;
                    },
                    cursorWidth: 1.5,
                    decoration: InputDecoration(
                      labelText: "Age",
                      fillColor: Colors.transparent,
                      labelStyle: TextStyle(color: Colors.black),
//                      prefixIcon: Icon(Icons.email),
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: TextFormField(
                    controller: email,
                    cursorColor: Colors.orange,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter Correct Email';
                      }
                      return null;
                    },
                    cursorWidth: 1.5,
                    decoration: InputDecoration(
                      labelText: "Email address",
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.transparent,
//                      prefixIcon: Icon(Icons.email),
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: TextFormField(
                    controller: password,
                    cursorColor: Colors.orange,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Type A Strong Password';
                      }
                      return null;
                    },
                    obscureText: true,
                    cursorWidth: 1.5,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black),
//                      prefixIcon: Icon(Icons.email),
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      fillColor: Colors.transparent,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: TextFormField(

                    cursorColor: Colors.orange,
                    validator: (value) {
                      if (value.length < 6) {
                        return 'Please Re-Enter Your Password';
                      }
                      return null;
                    },
                    obscureText: true,
                    cursorWidth: 1.5,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Colors.black),
//                      prefixIcon: Icon(Icons.security),
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    style: new TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                NiceButton(
                  width: size.width * 0.85,
                  radius: 25,
                  padding: const EdgeInsets.all(10),
                  text: "Continue",
                  fontSize: 22,
                  textColor: Colors.white,
                  gradientColors: [Colors.blueGrey[500], Colors.blueGrey[500]],
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      ProgressDialog dialog = ProgressDialog(context);
                      dialog.style(message: 'Please wait...');
                      await dialog.show();
                      print(email.text);
                      print(password.text);
                      auth.signUp(email.text, password.text).then((value) async {
                        if(value != null){
                          db.addDataWithId('profile', value.uid, {
                            'firstName': firstName.text,
                            'lastName': lastName.text,
                            'age': age.text
                          }).then((value) async {
                            await dialog.hide();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavigationPage()),
                            );
                          });

                        } else {
                          await dialog.hide();
                          Fluttertoast.showToast(
                              msg: "Something goes wrong!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        }
                      });
                    }
                  },
                  background: Colors.white,
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Text("By continuing, you agree to Comrade's"),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Termsnpolicies()));
                      },
                      child: Text(
                        "Terms of service & privacy policy",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
//                InkWell(
//                  onTap: (){},
//                  child: Container(
//                    height: 50,
//                    width: size.width * 0.85,
//                    decoration: BoxDecoration(
//                      color: Colors.blue[900],
//                      borderRadius: BorderRadius.circular(50),
//                    ),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: [
//                        Icon(
//                          Icons.favorite,
//                          color: Colors.white,
//                        ),
//                        Text(
//                          "Continue with Facebook",
//                          style: TextStyle(
//                            letterSpacing: 2,
//                            color: Colors.white,
//                            fontSize: 17,
//                            fontWeight: FontWeight.bold,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
