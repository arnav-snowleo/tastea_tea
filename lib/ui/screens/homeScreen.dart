import 'package:flutter/material.dart';
import 'package:tastea_tea/bookmarkScreenbackup.dart';
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
  bool _isLoggedIn = true;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
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
            StackedCardsCarousel(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: RoundButton(
                color: kLighterGreenColor,
                textColor: kWhite,
                text: "Explore More Categories",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => BookmarkScreened(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Text('photo testings'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProfilePhoto(),
                    ),
                  );
                },
              ),
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
              StackedCardsCarousel(),
            ],
          ),
        ),
 */

//class RightWidget extends StatefulWidget {
//  @override
//  _RightWidgetState createState() => _RightWidgetState();
//}
//
//class _RightWidgetState extends State<RightWidget>
//    with TickerProviderStateMixin {
//  TabController _tabController;
//
//  @override
//  void initState() {
//    super.initState();
//    _tabController = TabController(vsync: this, length: 3);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.only(
//        left: 15,
//      ),
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Padding(
//            padding: EdgeInsets.only(top: 50, left: 20),
//            child: Text(
//              "Food & Delivery",
//              style: TextStyle(
//                color: Colors.black,
//                fontSize: 25,
//              ),
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.only(top: 15, left: 10),
//            child: SizedBox(
//              height: 30,
//              child: TabBar(
//                isScrollable: true,
//                unselectedLabelColor: Colors.black,
//                labelColor: Color(0xffED305A),
//                controller: _tabController,
//                indicator: BoxDecoration(
//                  color: Color(0x55B71C1C),
//                  borderRadius: BorderRadius.only(
//                    topRight: Radius.circular(20),
//                    bottomLeft: Radius.circular(20),
//                  ),
//                ),
//                tabs: <Widget>[
//                  Tab(
//                    text: "Desert",
//                  ),
//                  Tab(
//                    text: "Beverage",
//                  ),
//                  Tab(
//                    text: "Fast-food",
//                  ),
//                ],
//              ),
//            ),
//          ),
//          Expanded(
//            child: TabBarView(
//              controller: _tabController,
//              children: <Widget>[
//                StackedCards(),
//                StackedCards(),
//                StackedCards(),
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
//}
