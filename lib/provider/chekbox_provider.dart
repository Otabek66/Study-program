import 'package:flutter/material.dart';

class ChekBoxProvider extends ChangeNotifier {

bool chekboxforAccounting = false;
bool chekboxforSignUp = false;
void get checkboxAccounting { 
  chekboxforAccounting = !chekboxforAccounting;
  notifyListeners();
}
void get checkboxSignUp { 
  chekboxforAccounting = !chekboxforAccounting;
  notifyListeners();
}
}