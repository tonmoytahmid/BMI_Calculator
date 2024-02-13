import 'dart:math';

class calculation {
  calculation({
    required this.feet,
    required this.inchi,
    required this.weight,
  });
  final int feet;
  final int inchi;
  late double _bmi;
  final int weight;
  String calculateBMi() {
    _bmi = weight / pow((feet * 0.3048 + inchi * 0.0254), 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25) {
      return "Over weight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "Under weight";
    }
  }

  String comment() {
    if (_bmi >= 25) {
      return "Your weight is Over weight.Do exercise regularly";
    } else if (_bmi >= 18.5) {
      return "Bingooo!! You are fit.Keep going";
    } else {
      return "Take care of your health.You are Under weight.";
    }
  }
}
