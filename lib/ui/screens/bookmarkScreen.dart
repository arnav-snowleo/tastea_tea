import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tastea_tea/auth/googleAuth.dart';
import 'package:tastea_tea/data/firestoreData.dart';

import 'package:google_sign_in/google_sign_in.dart';

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
    return Flexible(
      child: StreamBuilder(
        stream: beverageRef.snapshots(),
        builder: (_, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                var doc = snapshot.data.documents[index].data;

                return Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: 25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
//                          Text('hi'),
//                          Text("hi," + _googleSignIn.currentUser.displayName),
//                            Image.network(
//                              _googleSignIn.currentUser.photoUrl,
//                              height: 120.0,
//                              width: 120.0,
//                            ),

//                          FlatButton(
//                            child: Text("Logout google"),
//                            onPressed: () {
//                              _logout();
//                            },
//                          ),

//                          SizedBox(
//                            height: 1,
//                          ),
//                          Container(
//                            height: 18,
//                            child: Text(
//                              "● " + doc['title'],
//                              style: TextStyle(
//                                color: Colors.black,
//                                fontWeight: FontWeight.bold,
//                              ),
//                            ),
//                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          } else
            return Text('No data in Database');
        }, // snapshot is the listener
      ),
    );
  }
}
