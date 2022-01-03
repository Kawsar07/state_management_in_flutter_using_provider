import 'package:flutter/material.dart';

class ProgressValue extends ChangeNotifier{
  double _progress = 0.00;
  double get progress => _progress;
  set progress (double val){
    _progress = val;
    notifyListeners();
  }
}