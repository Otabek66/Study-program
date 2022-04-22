import 'package:onboarding/services/fire_service.dart';

class MyService{
  Future<bool> signUp( String emailController,
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
   Future<bool> signIn( String emailController,
      String passwordController) async {
    try {
      await FireService.auth.signInWithEmailAndPassword(
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