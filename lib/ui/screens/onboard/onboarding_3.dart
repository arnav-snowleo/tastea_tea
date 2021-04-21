import 'package:flutter/material.dart';
import 'package:tastea_tea/ui/screens/landingPage.dart';
import 'package:tastea_tea/ui/screens/signupScreen.dart';
import 'package:tastea_tea/ui/theme/constants.dart';

class OnboardingScreenThree extends StatelessWidget {
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
                  image: AssetImage('assets/images/mint_tea.png'),
                  fit: BoxFit.cover,
                ),
//                shape: BoxShape.circle,
              ),
            ),
            smallheightgap,
            Container(
              child: Text(
                'Brew the perfect cup of tea for any ocassion',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
            ),
            smallheightgap,
            Container(
              child: Text(
                'From brewing the classic tea to whipping up cozy matcha \n lattes - our tutorials will have you seeping \n your favourite tea like a pro-in no time!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey),
              ),
            ),
            smallheightgap,
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignupScreen(),
                  ),
                );
              },
              child: Text('Continue'),
            ),
            bigheightgap,
          ],
        ),
      ),
    );
  }
}
