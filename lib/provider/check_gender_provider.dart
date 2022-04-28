import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/colors_const.dart';

class CheckGenderProvider extends ChangeNotifier{
  bool male = true;
  bool female = false;
  Color color = ColorsConst.kgenderboxColorpres;

  void checkGender() {
    male = !male;
    
    notifyListeners();
  }
}