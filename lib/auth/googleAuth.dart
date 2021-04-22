import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:tastea_tea/ui/screens/landingPage.dart';

class AuthProvider {
  //instance of FirebaseAuth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> loginWithGoogle() async {
    try {
      //instance of GoogleSignIn.
      GoogleSignIn googleSignIn = GoogleSignIn();

      GoogleSignInAccount account = await googleSignIn.signIn();

      final GoogleSignInAuthentication googleSignInAuthentication =
          await account.authentication;

      if (account == null) return false;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final AuthResult authResult =
          await _auth.signInWithCredential(credential);

      if (authResult.user == null) return false;
      return true;
    } catch (e) {
      print(e.message);
      print("Error logging with google");
      return false;
    }
  }

  Future<void> logOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("error logging out");
    }
  }
}
