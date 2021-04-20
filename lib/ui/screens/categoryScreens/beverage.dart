import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tastea_tea/data/firestoreData.dart';

class BeverageScreen extends StatefulWidget {
  @override
  _BeverageScreenState createState() => _BeverageScreenState();
}

class _BeverageScreenState extends State<BeverageScreen> {
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
                          SizedBox(
                            height: 1,
                          ),
                          Container(
                            height: 18,
                            child: Text(
                              "● " + doc['title'],
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
