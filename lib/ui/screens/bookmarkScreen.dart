import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tastea_tea/auth/googleAuth.dart';
import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/data/firestoreData.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:tastea_tea/ui/theme/constants.dart';

class BookMarkScreen extends StatefulWidget {
  @override
  _BookMarkScreenState createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              smallheightgap,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Default Collection',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kBlack,
                    ),
                  ),
                  bigwidthgap,
                  smallwidthgap,
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: kLightGreenColor,
                  ),
                ],
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kLightGreenColor,
                ),
                child: FlatButton(
                  child: Text(
                    " + Create new collection",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
//                  _logout();
                  },
                ),
              ),
              smallheightgap,
              Expanded(
                child: StreamBuilder(
                  stream: bookmarkRef.snapshots(),
                  builder: (_, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                        itemCount: snapshot.data.documents.length,
                        shrinkWrap: true,
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          var doc = snapshot.data.documents[index].data;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: Color(0xFFc2cbe2),
                                  margin: const EdgeInsets.only(
                                    top: 5.0,
                                    right: 35,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: kBlack,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                        'assets/images/matchaBrew.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    height: 150,
                                    width: 190,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    doc['title'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    doc['contributed'],
                                    style: TextStyle(
                                      color: kDarkGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "★ " + doc['stars'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              smallheightgap,
                            ],
                          );
                        },
                      );
                    } else
                      return Text('No data in Database');
                  }, // snapshot is the listener
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
