import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/ui/widgets/roundButton.dart';

import 'onboarding_3.dart';

class OnboardingScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            smallheightgap,
            Container(
              height: 300.0,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/beverage.png'),
                  fit: BoxFit.cover,
                ),
//                shape: BoxShape.circle,
              ),
            ),
            smallheightgap,
            Container(
              child: Text(
                'Explore the secret recipes of any type of tea',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
            ),
            smallheightgap,
            Container(
              child: Text(
                'From brewing the classic tea to whipping up cozy matcha  lattes - our tutorials will have you seeping your favourite tea like a pro-in no time!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              ),
            ),
            smallheightgap,
            RoundButton(
              color: kLightGrey,
              textColor: kBlack,
              text: "Continue",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OnboardingScreenThree(),
                  ),
                );
              },
            ),
            bigheightgap,
          ],
        ),
      ),
    );
  }
}
