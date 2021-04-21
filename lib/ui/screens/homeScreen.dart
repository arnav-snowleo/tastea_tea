import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/screens/categoryScreens/desert.dart';
import 'package:tastea_tea/ui/widgets/searchBar.dart';
import 'package:tastea_tea/ui/widgets/stackedCards.dart';

import 'categoryScreens/beverage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SearchBar(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  StackedCards(),
                  SizedBox(
                    width: 10,
                  ),
                  StackedCards(),
                  SizedBox(
                    width: 10,
                  ),
                  StackedCards(),
                  SizedBox(
                    width: 10,
                  ),
                  StackedCards(),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
