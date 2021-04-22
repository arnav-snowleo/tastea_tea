import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tastea_tea/data/firestoreData.dart';
import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/ui/widgets/stackedCardsCarousel.dart';

class FastfoodScreen extends StatefulWidget {
  @override
  _FastfoodScreenState createState() => _FastfoodScreenState();
}

class _FastfoodScreenState extends State<FastfoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            StackedCardsCarousel(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15),
              child: Text(
                'New Recipes',
                style: TextStyle(
                  color: kBlack,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: StreamBuilder(
                stream: fastfoodRef.snapshots(),
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
                        return Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
    );
  }
}
