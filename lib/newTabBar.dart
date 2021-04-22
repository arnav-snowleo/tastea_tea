import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/screens/categoryScreens/beverage.dart';
import 'package:tastea_tea/ui/screens/categoryScreens/desert.dart';
import 'package:tastea_tea/ui/screens/categoryScreens/fastfood.dart';
import 'package:tastea_tea/ui/theme/constants.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // give the tab bar a height [can change hheight to preferred height]
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: kLightGreenColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Desert',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Beverage',
                  ),

                  Tab(
                    text: 'Fast food',
                  ),
                ],
              ),
            ),
          ),
          // tab bar view here
          Container(
            height: 800,
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget
                DesertScreen(),

                // second tab bar view widget
                BeverageScreen(),

                // second tab bar view widget
                FastfoodScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
