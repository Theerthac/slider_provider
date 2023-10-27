import 'package:flutter/material.dart';

class SliderProvider extends ChangeNotifier {
  double value = 1.0;

  void setValue(val) {
    value = val;
    notifyListeners();
  }
}
