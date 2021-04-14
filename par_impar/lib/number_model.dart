import 'dart:math';

class NumberModel {
  int _number = Random().nextInt(1000);
  String _answer;

  int get number {
    return _number;
  }

  int get newNumber {
    _number = Random().nextInt(1000);
    return _number;
  }

  String get evenAnswer {
    _answer = 'par';
    return _answer;
  }

  String get oddAnswer {
    _answer = 'impar';
    return _answer;
  }

  bool validationTest(String a) {
    if ((a == 'par' && _number % 2 == 0) ||
        (a == 'impar' && _number % 2 != 0)) {
      return true;
    } else {
      return false;
    }
  }
}
