import 'package:flutter/material.dart';
import 'package:onboarding/provider/check_gender_provider.dart';
import 'package:provider/provider.dart';

class ContainerForProfile {
  static Container genderCheck (BuildContext context,String gender,var genderProvider,var checkGenderProvider){
    return Container(
      height: MediaQuery.of(context).size.height * 0.05911333,
      width: MediaQuery.of(context).size.width * 0.41616,
      color: context.watch<CheckGenderProvider>().color,
      child: Row(children: [
        Checkbox(
          value: genderProvider, onChanged: (v){
          checkGenderProvider;
      }),
      Text(gender)
      ]),
    );
  }
}