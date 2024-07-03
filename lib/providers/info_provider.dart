import 'package:flutter/cupertino.dart';

class InfoProvider extends ChangeNotifier {
  String name = '';
  int score = 0;

  void saveName(String value) {
    name = value;
    notifyListeners();
  }

  void saveScore(int value) {
    score = value;
    notifyListeners();
  }

  void increaseScore() {
    score = score + 1;
    notifyListeners();
  }
}
