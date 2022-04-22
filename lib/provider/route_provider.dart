import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/services/fire_service.dart';

class RouteProvider extends ChangeNotifier {
  RouteProvider() {
    checkLogiPage();
    print(FireService.auth.currentUser!.email);
  }
  String route = '/signIn';

  void checkLogiPage() {

    FireService.auth.currentUser == null ? route = '/signIn' : route = '/main';
    // if (FireService.auth.currentUser != null) {
    //   route = '/main';
    //   print("Bosh emas");
    // } else {
    //   route = '/signIn';
    // }

    notifyListeners();
  }
}
