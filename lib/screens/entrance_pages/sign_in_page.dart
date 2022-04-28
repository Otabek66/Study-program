import 'package:flutter/material.dart';
import 'package:onboarding/provider/user_name.dart';
import 'package:onboarding/screens/main_page.dart';
import 'package:onboarding/services/new.dart';
import 'package:onboarding/widgets/my_messanger.dart';
import 'package:onboarding/widgets/my_textformfield.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign In")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email'),
            sizedbox(8),
            MyTextFormField.textformfield('study@gmail.com', emailController),
            sizedbox(16),
            Text('Password'),
            sizedbox(8),
            MyTextFormField.textformfield(
                '123456', passwordController),
            ElevatedButton(onPressed: () async{
           await MyService().signIn(emailController.text, passwordController.text).then((value){
                  if (value) {
                    Navigator.pushNamed(context,'/main');
                  } else {
                    MyMessenger.messenger(context, 'Error while Sign In', Colors.red);
                  }
                  context.read<ForUserName>().userName(context,emailController.text);
              });

            }, child: Text("Sign In"))
          ],
        ),
      ),
    );
  }

  SizedBox sizedbox(double size) => SizedBox(
        height: size,
      );
}
