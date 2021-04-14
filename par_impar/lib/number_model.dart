import 'dart:math';

class NumberModel {
  int _number = Random().nextInt(1000);

  int get number {
    return _number;
  }

  int get newNumber {
    _number = Random().nextInt(1000);
    return _number;
  }
}
