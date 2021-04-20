import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/screens/homeScreen.dart';

import 'searchScreen.dart';
import 'bookmarkScreen.dart';

/// This is the stateful widget that the main application instantiates.
class LandingPage extends StatefulWidget {
  //const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    BookmarkScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(80.0), topLeft: Radius.circular(30)),
        child: Container(
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                title: Text('Bookmark'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedIconTheme: IconThemeData(
              size: 30,
              color: Color(0xFF97af8f),
            ),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
