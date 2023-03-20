import 'package:flutter/material.dart';

class BottomPro extends ChangeNotifier{
  int i = 0;

  void changeBottom(int value){
    i = value;

    notifyListeners();
  }
}