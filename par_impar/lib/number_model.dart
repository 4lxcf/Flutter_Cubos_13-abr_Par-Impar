import 'dart:math';

class NumberModel {
  int _number = 0;

  int get number {
    _number = Random().nextInt(1000);
    return _number;
  }

  bool isEven() {
    if (_number % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }
}
