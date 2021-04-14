import 'package:flutter/foundation.dart';
import 'package:par_impar/main.dart';
import 'package:par_impar/number_model.dart';

class NumberController {
  final model = NumberModel();
  final home = MyHomePage();

  String get number {
    return model.number.toString();
  }

  String get newNumber {
    return model.newNumber.toString();
  }

  String get evenAnswer {
    if (model.validationTest(model.evenAnswer) == true) {
      return 'Correto!';
    } else {
      return 'Incorreto!';
    }
  }

  String get oddAnswer {
    if (model.validationTest(model.oddAnswer) == true) {
      return 'Correto!';
    } else {
      return 'Incorreto!';
    }
  }
}
