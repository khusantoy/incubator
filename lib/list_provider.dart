import 'package:flutter/material.dart';

class ListProvider with ChangeNotifier {
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
  ];

  void add() {
    numbers.add(numbers.last + 1);
    notifyListeners();
  }
}
