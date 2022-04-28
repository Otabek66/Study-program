import 'package:flutter/material.dart';
import 'package:onboarding/services/fire_service.dart';

class SignUpProvider extends ChangeNotifier {
  Future signUp(BuildContext context, String emailController,
      String passwordController) async {
    try {
      await FireService.auth.createUserWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
      Navigator.pushNamedAndRemoveUntil(context, '/signUpInterests', (route) => false);
      notifyListeners();
    } catch (e) {
      Exception(e);
      notifyListeners();
    }
  }
}
