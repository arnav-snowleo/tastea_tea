import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/ui/widgets/stackedCards.dart';

class StackedCardsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          smallwidthgap,
          StackedCards(),
          smallwidthgap,
          StackedCards(),
          smallwidthgap,
          StackedCards(),
          smallwidthgap,
          StackedCards(),
          widthgap,
        ],
      ),
    );
  }
}
