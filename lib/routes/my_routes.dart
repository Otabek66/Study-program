import 'package:flutter/material.dart';
import 'package:onboarding/screens/accaunting_page.dart';
import 'package:onboarding/screens/entrance_pages/sign_in_page.dart';
import 'package:onboarding/screens/entrance_pages/sign_up_interests.dart';
import 'package:onboarding/screens/entrance_pages/splash_page.dart';
import 'package:onboarding/screens/entrance_pages/splash_two_page.dart';
import 'package:onboarding/screens/home_page.dart';
import 'package:onboarding/screens/main_page.dart';
import 'package:onboarding/screens/entrance_pages/sign_up_page.dart';
import 'package:onboarding/screens/notification_page.dart';

class MyRoutes {
  Route? onGenerate(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: ((context) => const SplashPage()));
      case 'splashtwo':
        return MaterialPageRoute(builder: ((context) => SplashTwoPage()));
      case '/signUp':
        return MaterialPageRoute(builder: ((context) => SignUpPage()));
      case '/signUpInterests':
        return MaterialPageRoute(builder: ((context) => SignUpInterestsPage()));
      case '/main':
        return MaterialPageRoute(builder: ((context) => MainPage()));
      case '/home':
        return MaterialPageRoute(builder: ((context) => HomePage()));  
        case '/accounting':
        return MaterialPageRoute(builder: ((context) => AccountingPage()));

      case '/signIn':
        return MaterialPageRoute(builder: ((context) => SignInPage()));
      case 'notification':
        return MaterialPageRoute(builder: ((context) => NotificationPage()));
    }
  }
}
