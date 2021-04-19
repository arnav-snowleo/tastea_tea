import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/widgets/searchBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
