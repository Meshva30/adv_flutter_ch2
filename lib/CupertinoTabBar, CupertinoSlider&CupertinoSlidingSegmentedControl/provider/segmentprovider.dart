import 'package:flutter/material.dart';

class SegmentProvider  extends ChangeNotifier{
  int index =0;
  void Changeindex(String index){
    this.index=int.parse(index);
    notifyListeners();
  }
}