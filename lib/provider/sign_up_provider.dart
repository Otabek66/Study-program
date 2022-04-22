import 'package:flutter/material.dart';
import 'package:onboarding/services/fire_service.dart';

class SignUpProvider extends ChangeNotifier {
  Future<bool> signUp(BuildContext context, String emailController,
      String passwordController) async {
    try {
      await FireService.auth.createUserWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
      return true;
    } catch (e) {
      Exception(e);
      return false;
    }
  }
}
