import 'package:flutter/material.dart';
import 'package:onboarding/screens/entrance_pages/sign_up_interests.dart';
import 'package:onboarding/services/new.dart';
import 'package:onboarding/widgets/my_messanger.dart';
import 'package:onboarding/widgets/my_textformfield.dart';

class AccountingPage extends StatelessWidget {
 AccountingPage({ Key? key }) : super(key: key);

 TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController studentIdController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Text('Date of Birth'),
            sizedbox(8),
            MyTextFormField.textformfield('Your password', dateController),
            sizedbox(16),
            Text('Phone Number'),
            sizedbox(8),
            MyTextFormField.textformfield('+99 899 123 45 67', numberController),
            sizedbox(16),
            Text('Student ID'),
            sizedbox(8),
            MyTextFormField.textformfield('#85463', studentIdController),
            sizedbox(24),
            Row(
              children: [
                Checkbox(value: false, onChanged: (_) {}),
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
              child: const Text("Update Profil"),
              onPressed: () async{
                // await MyService().signUp(emailController.text, passwordController.text).then((value) {
                //   if(value){
                //     Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: ((context) => SignUpInterestsPage())), (route) => false);
                //   }else{
                //     MyMessenger.messenger(context, "Error while Sign up!", Colors.red);
                //   }
                // });
              },
            ),
          ],
        ),
      ),
    );
  }

  sizedbox(double i) {
    return SizedBox(height: i,);
  }
}