import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/widgets/searchBar.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF97af8f),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Search Recipe',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SearchBar(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Choose types of tea',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xFFc2cbe2),
                            margin: const EdgeInsets.only(top: 20.0),
                            child: SizedBox(
                                height: 100.0,
                                width: 100,
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
                                        "White tea",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: .0,
                          left: .0,
                          right: .0,
                          child: Center(
                            child: CircleAvatar(
                              radius: 35.0,
                              child: Text("img"),
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xFFc2cbe2),
                            margin: const EdgeInsets.only(top: 20.0),
                            child: SizedBox(
                                height: 100.0,
                                width: 100,
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
                                        "White tea",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: .0,
                          left: .0,
                          right: .0,
                          child: Center(
                            child: CircleAvatar(
                              radius: 35.0,
                              child: Text("img"),
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xFFc2cbe2),
                            margin: const EdgeInsets.only(top: 20.0),
                            child: SizedBox(
                                height: 100.0,
                                width: 100,
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
                                        "White tea",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: .0,
                          left: .0,
                          right: .0,
                          child: Center(
                            child: CircleAvatar(
                              radius: 35.0,
                              child: Text("img"),
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xFFc2cbe2),
                            margin: const EdgeInsets.only(top: 20.0),
                            child: SizedBox(
                                height: 100.0,
                                width: 100,
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
                                        "White tea",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: .0,
                          left: .0,
                          right: .0,
                          child: Center(
                            child: CircleAvatar(
                              radius: 35.0,
                              child: Text("img"),
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            color: Color(0xFFc2cbe2),
                            margin: const EdgeInsets.only(top: 20.0),
                            child: SizedBox(
                                height: 100.0,
                                width: 100,
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
                                        "White tea",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: .0,
                          left: .0,
                          right: .0,
                          child: Center(
                            child: CircleAvatar(
                              radius: 35.0,
                              child: Text("img"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'What dish are you making?',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.cake,
                        size: 45,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Desert',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.local_drink,
                        size: 45,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Beverage',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.fastfood,
                        size: 45,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Fast food',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Difficulty Level',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
