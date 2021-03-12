import 'package:brain_store/podcaster_profile.dart';
import 'package:brain_store/services/db_services.dart';
import 'package:brain_store/services/payment_service.dart';
import 'package:brain_store/utils/call_utilites.dart';
import 'package:brain_store/utils/permissions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:prompt_dialog/prompt_dialog.dart';
import 'package:provider/provider.dart';

class ActivePodcaster extends StatefulWidget {
  List<dynamic> category;

  ActivePodcaster(this.category);

  @override
  _ActivePodcasterState createState() => _ActivePodcasterState();
}

class _ActivePodcasterState extends State<ActivePodcaster> {
  DbServices db = DbServices();
  ProgressDialog dialog;
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    dialog = ProgressDialog(context);
    dialog.style(message: 'Please wait...');
    super.initState();
  }
  // FirebaseFirestore fire = FirebaseFirestore.instance;
  // CollectionReference r = fire.collection('profile');
  // Query query = col.where('uid', isEqualTo: stuff.uid);
  //

  @override
  Widget build(BuildContext context) {

    User user = Provider.of<User>(context);
print(widget.category);
    return Scaffold(
      key: _scaffoldState,
      body: FutureBuilder(
        future: db.getSnapshotWithQuery('profile', 'status', ['Online']),
        // future: FirebaseFirestore.instance.collection('profile').where('status', arrayContainsAny: widget.category).get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            snapshot.data.forEach((element) {
              print("experties: ${element['experties']}");
              print("category: ${widget.category}");
              print("is contain: ${widget.category.contains(element['experties'])}");
            });
            if(snapshot.data.isEmpty){
              return Center(
                child: Text('There is no podcaster online!'),
              );
            }
            return Column(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Online Podcaster",
                      style: TextStyle(
                        color: Color.fromRGBO(22, 49, 78, 1),
                        fontSize: 20,
                        fontFamily: "Poppins",
                      ),
                    )),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      print(snapshot.data[index]['experties']);
                      print("if value ${!widget.category.contains("${snapshot.data[index]['experties']}")}");
                      if(!widget.category.contains(snapshot.data[index]['experties'])){
                        return podcasterTile(snapshot.data[index], user, context);
                      }
                    }),
              ],
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error.toString()}'));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget podcasterTile(DocumentSnapshot podcaster, User user, context) {
    print(podcaster);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.25,
        child: Container(
          color: Colors.white,
          child: ListTile(
            leading: Stack(children: [
              Icon(FontAwesomeIcons.userCircle, size: 50, color: Colors.black),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Icon(Icons.circle, size: 15, color: Colors.green))
            ]),
            title: Text(podcaster.data().containsKey('name')
                ? podcaster['name']
                : podcaster['email']),
            subtitle: Text(podcaster['experties']),
            trailing: Chip(
              label: Text(podcaster.data().containsKey('charges')
                  ? "\$${podcaster['charges']}"
                  : '\$0'),
            ),
          ),
        ),
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Call',
            color: Colors.blue,
            icon: Icons.call,
            onTap: () async {
              // _scaffoldState.currentState.showSnackBar(
              //   SnackBar(content: Text("Pay \$${podcaster['charges']} before calling!"))
              // );
              StripeService.init();
              return StripeService.payWithNewCard(amount: "${int.parse(podcaster['charges'])*100}", currency: 'usd', dialog: dialog).then((value) async {
                if(value.success){
                  await dialog.hide();
                  _scaffoldState.currentState.hideCurrentSnackBar(reason: SnackBarClosedReason.hide);
                  _scaffoldState.currentState.showSnackBar(
                      SnackBar(content: Text(value.message), duration: Duration(milliseconds: 500)),);
                  dialog.style(message: 'Connecting...');
                  await dialog.show();
                  Permissions.cameraAndMicrophonePermissionsGranted().then((value) async {
                    if(!value){
                      await dialog.hide();
                      _scaffoldState.currentState.hideCurrentSnackBar(reason: SnackBarClosedReason.hide);
                      _scaffoldState.currentState.showSnackBar(
                          SnackBar(content: Text('Something goes wrong!')));
                    }
                    dialog.hide().then((value){
                      return CallUtils.dial(
                          currUserId: user.uid,
                          currUserName: user.displayName == null ? '' : user.displayName,
                          currUserAvatar: user.photoURL == null ? '' : user.photoURL,
                          receiverId: podcaster.id,
                          receiverAvatar: podcaster.data().containsKey('photoURL') ? '' : podcaster['photoURL'],
                          receiverName: podcaster.data().containsKey('name') ? '' : podcaster['email'],
                          context: context);
                    });
                  });

                }
                await dialog.hide();


              });

            },
          ),
          IconSlideAction(
            caption: 'Profile',
            color: Colors.indigo,
            icon: Icons.contact_page_rounded,
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PodcasterProfile(podcaster))),
          ),
        ],
      ),
    );
  }
}
