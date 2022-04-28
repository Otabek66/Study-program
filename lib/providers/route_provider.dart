import 'package:flutter/material.dart';
import 'package:onboarding/services/fire_service.dart';

class RouteProvider extends ChangeNotifier {
  RouteProvider() {
    checkLoginPage();
  }

  String route = '/cover';
  checkLoginPage() {
    FireService.auth.currentUser == null ? route = '/home' : '/cover';
  }
}
