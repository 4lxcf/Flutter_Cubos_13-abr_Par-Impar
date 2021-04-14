import 'package:par_impar/number_model.dart';

class NumberController {
  final model = NumberModel();

  String get number {
    return model.number.toString();
  }

  String get newNumber {
    return model.newNumber.toString();
  }
}
