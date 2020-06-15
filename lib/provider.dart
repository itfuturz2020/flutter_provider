import 'package:flutter/material.dart';

class providerClass extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

   increment() {
    _counter++;
    notifyListeners();
  }
}
