import 'package:flutter/material.dart';

class HomeController {
  var incr$ = ValueNotifier(0);
  var loading$ = ValueNotifier(true);

  int get counter => incr$.value;

  void incrementCounter() {
    incr$.value++;
  }
}

class HomeController2 extends ChangeNotifier {
  var incr = 0;

  void incrementCounter() {
    incr++;
    notifyListeners();
  }
}
