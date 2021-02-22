import 'package:brain_store/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:progress_dialog/progress_dialog.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({Key key}) : super(key: key);


  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  AuthServices auth = AuthServices();

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
                  height: 100,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'No Worries',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 26, top: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Let's fix this so you can use Comrade",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
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
                  height: 40,
                ),
                NiceButton(
                  width: size.width * 0.85,
                  radius: 25,
                  padding: const EdgeInsets.all(10),
                  text: "Reset Password",
                  fontSize: 22,
                  textColor: Colors.white,
                  gradientColors: [Colors.blueGrey[500], Colors.blueGrey[500]],
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      ProgressDialog dialog = ProgressDialog(context);
                      dialog.style(message: 'Please wait...');
                      await dialog.show();
                      auth.forgotPassword(email.text).then((value) async {
                        print(value);
                        if(value != null){
                          await dialog.hide();
                          Fluttertoast.showToast(
                              msg: "Reset link send to your email!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
