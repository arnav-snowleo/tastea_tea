import 'package:flutter/material.dart';
import 'package:tastea_tea/bookmarkScreenbackup.dart';
import 'package:tastea_tea/newTabBar.dart';
import 'package:tastea_tea/profilePhotoFetch_try.dart';
import 'package:tastea_tea/ui/screens/signupScreen.dart';

import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/ui/widgets/roundButton.dart';
import 'package:tastea_tea/ui/widgets/searchBar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tastea_tea/ui/widgets/stackedCardsCarousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              smallheightgap,
              SearchBar(),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15, bottom: 5),
                child: Text(
                  'Hi, tea lover.',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                child: Text(
                  'Check our recommendations for you!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              MyTabBar(),
            ],
          ),
        ),
      ),
    );
  }
}


