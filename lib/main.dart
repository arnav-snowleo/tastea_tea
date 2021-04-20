import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:tastea_tea/ui/screens/onboard/onboarding_1.dart';
import 'package:tastea_tea/ui/screens/signupScreen.dart';

int initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //SharedPreferences
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tastea Tea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute:
          initScreen == 0 || initScreen == null ? 'onboard' : 'signup',
      routes: {
        'onboard': (context) => OnboardingScreenOne(),
        'signup': (context) => SignupScreen(),
      },
    );
  }
}
