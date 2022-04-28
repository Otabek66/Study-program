import 'package:flutter/material.dart';
import 'package:onboarding/provider/chekbox_provider.dart';
import 'package:onboarding/provider/sign_up_provider.dart';
import 'package:onboarding/provider/user_name.dart';
import 'package:onboarding/screens/entrance_pages/sign_up_interests.dart';
import 'package:onboarding/services/new.dart';
import 'package:onboarding/widgets/my_messanger.dart';
import 'package:onboarding/widgets/my_textformfield.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name'),
            sizedbox(8),
            MyTextFormField.textformfield('Your name', nameController),
            sizedbox(16),
            Text('Email'),
            sizedbox(8),
            MyTextFormField.textformfield('study@email.com', emailController),
            sizedbox(16),
            Text('Password'),
            sizedbox(8),
            MyTextFormField.textformfield('Your password', passwordController),
            sizedbox(16),
            Text('Phone Number'),
            sizedbox(8),
            MyTextFormField.textformfield('0334 xxxx xxxx', numberController),
            sizedbox(24),
            Row(
              children: [
                Checkbox( value: context.watch<ChekBoxProvider>().chekboxforSignUp, onChanged: (_) {
                   context.read<ChekBoxProvider>().checkboxSignUp;
                  }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.73,
                  child: const Text(
                    'I agree with the terms and conditions and also the protection of my personal data on this application',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              child: const Text("Sign Up"),
              onPressed: () async {  
               context.read<SignUpProvider>().signUp(context, emailController.text, passwordController.text);
              },
            ),
          ],
        ),
      ),
    );
  }

  SizedBox sizedbox(double size) => SizedBox(
        height: size,
      );
}
