import 'package:par_impar/number_model.dart';

class NumberController {
  final model = NumberModel();

  String get number {
    return model.number.toString();
  }

  String get answer {
    if (model.isEven() == true) {
      return 'Par';
    } else {
      return 'Impar';
    }
  }
}
