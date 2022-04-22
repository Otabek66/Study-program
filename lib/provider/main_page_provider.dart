import 'package:flutter/material.dart';

class MainPageProvider extends ChangeNotifier {
    int currentIndex = 0;
    void checkPressed(v){
      currentIndex = v;
      notifyListeners();
    }
}