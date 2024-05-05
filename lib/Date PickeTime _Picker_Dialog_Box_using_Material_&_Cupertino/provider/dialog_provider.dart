
import 'package:flutter/material.dart';

class DialogProvider extends ChangeNotifier {
  String selectedDialogs = '';

  String get selectedRingtone => selectedDialogs;

  void setSelectedDialogs(String ringtone) {
    selectedDialogs = ringtone;
    notifyListeners();
  }
}
