import 'package:flutter/material.dart';

import 'package:tastea_tea/ui/components/signupComponents/haveAccount.dart';
import 'package:tastea_tea/ui/components/signupComponents/orDivider.dart';
import 'package:tastea_tea/ui/screens/homeScreen.dart';
import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/ui/widgets/inputField.dart';
import 'package:tastea_tea/ui/widgets/passwordField.dart';
import 'package:tastea_tea/ui/widgets/roundButton.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/matchaBrew.jpg"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              bigheightgap,
              bigheightgap,
              bigheightgap,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Create an account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 26),
                          ),
                          smallheightgap,
                          InputField(
                            hintText: "Your Email",
                            onChanged: (value) {},
                          ),
                          PasswordField(
                            onChanged: (value) {},
                          ),
                          RoundButton(
                            color: kLightGreenColor,
                            text: "SIGNUP",
                            press: () {},
                          ),
                          smallheightgap,
                          AlreadyHaveAnAccount(
                            login: false,
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => HomeScreen(),
                                ),
                              );
                            },
                          ),
                          OrDivider(),
                          smallheightgap,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                color: Colors.white,
                                splashColor: kLighterGreenColor,
                                textColor: Colors.black,
                                child: Text('Facebook'),
                              ),
                              RaisedButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                color: Colors.white,
                                splashColor: kLighterGreenColor,
                                textColor: Colors.black,
                                child: Text('Google'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
