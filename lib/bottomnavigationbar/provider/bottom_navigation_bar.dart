import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier{

  int BottomIndex =0;
  void ChangeBottomIndex(int value)
  {
    BottomIndex=value;
    notifyListeners();
  }
}