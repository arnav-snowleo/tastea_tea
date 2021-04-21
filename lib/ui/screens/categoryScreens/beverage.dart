import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tastea_tea/data/firestoreData.dart';
import 'package:tastea_tea/ui/theme/constants.dart';

class BeverageScreen extends StatefulWidget {
  @override
  _BeverageScreenState createState() => _BeverageScreenState();
}

class _BeverageScreenState extends State<BeverageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Color(0xff4285f4),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
                color: Color(0xff4285f4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Admission',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: StreamBuilder(
                  stream: beverageRef.snapshots(),
                  builder: (_, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (context, index) {
                          // doc['details'] is where we fetch dynamic links from
                          var doc = snapshot.data.documents[index].data;

                          return SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.95,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          widthgap,
                                          Column(
                                            children: <Widget>[
                                              Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                color: Color(0xFFc2cbe2),
                                                margin: const EdgeInsets.only(
                                                  top: 5.0,
                                                  right: 35,
                                                ),
                                                child: SizedBox(
                                                    height: 150.0,
                                                    width: 150.0,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 45.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Text(
                                                            "image here",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                              ),
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
                                          Column(
                                            children: <Widget>[
                                              Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                color: Color(0xFFc2cbe2),
                                                margin: const EdgeInsets.only(
                                                  top: 5.0,
                                                  right: 35,
                                                ),
                                                child: SizedBox(
                                                    height: 150.0,
                                                    width: 150.0,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 45.0),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Text(
                                                            "image here",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                              ),
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
                                          widthgap,
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
