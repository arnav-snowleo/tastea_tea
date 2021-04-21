import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tastea_tea/auth/googleAuth.dart';
import 'package:tastea_tea/data/firestoreData.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:tastea_tea/ui/theme/constants.dart';

class BookMarkScreen extends StatefulWidget {
  @override
  _BookMarkScreenState createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _logout() {
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
          stream: bookmarkRef.snapshots(),
          builder: (_, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                itemCount: snapshot.data.documents.length,
                shrinkWrap: true,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
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
                          child: SizedBox(
                              height: 140.0,
                              width: 140.0,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 45.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "image here",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "● " + doc['title'],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "● " + doc['contributed'],
                            style: TextStyle(
                              color: Colors.black,
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
    );
  }
}
