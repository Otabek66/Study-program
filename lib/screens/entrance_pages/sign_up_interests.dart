import 'package:flutter/material.dart';
import 'package:onboarding/screens/home_page.dart';
import 'package:onboarding/screens/main_page.dart';

class SignUpInterestsPage extends StatelessWidget {
  const SignUpInterestsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: Text("Continue"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> MainPage()));
        },
      ),
    );
  }
}
