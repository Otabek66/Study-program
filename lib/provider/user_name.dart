import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/screens/entrance_pages/sign_up_interests.dart';

class ForUserName extends ChangeNotifier {
String? username;
void userName(BuildContext context,String emailController){
  username = emailController;

  notifyListeners();
}

}