import 'package:diario/shared/services/google_signin_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Session extends ChangeNotifier {

  GoogleSingInService googleSingInService = GoogleSingInService();

  bool loggedIn = false;
  String? uuid;

  singIn() async {

    UserCredential? userCredential = await googleSingInService.googleLogin();

    if (userCredential == null) return;

    this.uuid = userCredential.user!.uid;
    this.loggedIn = true;

    notifyListeners();
  }

  singOut() {
    this.loggedIn = false;
    notifyListeners();
  }

}