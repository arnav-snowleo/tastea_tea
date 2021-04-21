import 'package:flutter/material.dart';

class BookmarkScreened extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            flexibleSpace: Column(
              children: <Widget>[
                TabBar(
//                  isScrollable: true,

                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,

                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF97af8f),
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Color(0xFF97af8f), width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.cake,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Desert',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Color(0xFF97af8f), width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.local_drink,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Beverage',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Color(0xFF97af8f), width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.fastfood,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Fast food',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Icon(Icons.cake),
            Icon(Icons.local_drink),
            Icon(Icons.fastfood),
          ]),
        ),
      ),
    );
  }
}

/*

beverage backup
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
      body: StreamBuilder(
        stream: beverageRef.snapshots(),
        builder: (_, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                // doc['details'] is where we fetch dynamic links from
                var doc = snapshot.data.documents[index].data;

                return Row(
                  children: <Widget>[
                    widthgap,
                    Card(
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
                                  height: 20,
                                ),
                                Text(
                                  "image here",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                smallheightgap,
                                smallheightgap,
                              ],
                            ),
                          )),
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
                    widthgap,
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

 */

/*
Column(
                          children: <Widget>[
                            Card(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 20,
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
                        ),
 */
