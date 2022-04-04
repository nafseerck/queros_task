import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController with ChangeNotifier {
  var _googleSingIn = GoogleSignIn();
  GoogleSignInAccount? googleAccount;

  login() async {
    this.googleAccount = await _googleSingIn.signIn();
    notifyListeners();
  }

  logOut() async {
    this.googleAccount = await _googleSingIn.signOut();
    notifyListeners();
  }
}