import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:onboarding/core/constants/colors_const.dart';
import 'package:onboarding/provider/check_gender_provider.dart';
import 'package:onboarding/provider/chekbox_provider.dart';
import 'package:onboarding/screens/entrance_pages/sign_up_interests.dart';
import 'package:onboarding/services/new.dart';
import 'package:onboarding/widgets/my_messanger.dart';
import 'package:onboarding/widgets/my_textformfield.dart';
import 'package:onboarding/widgets/profile_%20container.dart';
import 'package:provider/provider.dart';

class AccountingPage extends StatelessWidget {
 AccountingPage({ Key? key }) : super(key: key);

 TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController studentIdController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool chekboxValue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
              Row(children: [
                ContainerForProfile.genderCheck(context,'Male',context.watch<CheckGenderProvider>().male,context.read<CheckGenderProvider>().checkGender),
                ContainerForProfile.genderCheck(context,'Female',context.watch<CheckGenderProvider>().female,context.read<CheckGenderProvider>().checkGender),
              ],),
              Row(
                children: [
                  Checkbox(
                    value: context.watch<ChekBoxProvider>().chekboxforAccounting, onChanged: (_) {
                   context.read<ChekBoxProvider>().checkboxAccounting;
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
              SizedBox(
                height:size.height * 0.068,
                width: size.width * 0.872,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: ColorsConst.kprimaryColor,),
                  child: const Text("Update Profil"),
                  onPressed: () async{
                   
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  sizedbox(double i) {
    return SizedBox(height: i,);
  }
}