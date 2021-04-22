import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/screens/categoryScreens/beverage.dart';
import 'package:tastea_tea/ui/screens/categoryScreens/desert.dart';
import 'package:tastea_tea/ui/screens/categoryScreens/fastfood.dart';
import 'package:tastea_tea/ui/theme/constants.dart';

class BookmarkScreened extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kLighterGreenColor,
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
          body: TabBarView(
            children: [
              //desert, beverage,fastfood
              DesertScreen(),
              BeverageScreen(),
              FastfoodScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
