import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/screens/landingPage.dart';

class OnboardingScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnboardingScreenThree'),
      ),
      body: Container(
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => LandingPage(),
              ),
            );
          },
          child: Text('Next'),
        ),
      ),
    );
  }
}
