import 'package:flutter/material.dart';
import 'package:tastea_tea/auth/googleAuth.dart';

import 'package:tastea_tea/ui/components/signupComponents/haveAccount.dart';
import 'package:tastea_tea/ui/components/signupComponents/orDivider.dart';
import 'package:tastea_tea/ui/screens/homeScreen.dart';
import 'package:tastea_tea/ui/screens/landingPage.dart';
import 'package:tastea_tea/ui/theme/constants.dart';
import 'package:tastea_tea/ui/widgets/inputField.dart';
import 'package:tastea_tea/ui/widgets/passwordField.dart';
import 'package:tastea_tea/ui/widgets/roundButton.dart';

import 'package:google_sign_in/google_sign_in.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async {
    try {
      await _googleSignIn.signIn();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => LandingPage(),
        ),
      );
      setState(() {
        _isLoggedIn = true;
      });
    } catch (err) {
      print(err);
    }
  }

  _logout() {
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

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
                            textColor: kPrimaryLightColor,
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
                              smallwidthgap,
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
                                onPressed: () async {
                                  bool res =
                                      await AuthProvider().loginWithGoogle();
                                  if (!res)
                                    print("error logging in with google");

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => LandingPage(),
                                    ),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0)),
                                color: Colors.white,
                                splashColor: kLighterGreenColor,
                                textColor: Colors.black,
                                child: Text('Google'),
                              ),
                              smallwidthgap,
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
