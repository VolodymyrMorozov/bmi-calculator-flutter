import 'dart:math';

import 'package:bmi_calculator/human.dart';
import 'package:flutter/cupertino.dart';

class BMICalculator {
  final Human human;
  double _bmi;
  Result _result;

  BMICalculator({@required this.human}) {
    _bmi = human.weight / pow(human.height / 100, 2);
    if (_bmi >= 25) {
      _result = Result.owerweight;
    } else if (_bmi >= 18.5) {
      _result = Result.normal;
    } else {
      _result = Result.underweight;
    }
  }

  Result get result => _result;
  double get bmi => _bmi;
}

enum Result { owerweight, normal, underweight }

extension ResultExtension on Result {
  static const texts = {
    Result.owerweight: 'OWERWEIGHT',
    Result.normal: 'NORMAL',
    Result.underweight: 'UNDERWEIGHT'
  };

  static const Map interpretations = {
    Result.owerweight: 'You have a higher than normal body weight',
    Result.normal: 'You have a normal body weight',
    Result.underweight: 'You have a lower than normal body weight',
  };

  String get text => texts[this];
  String get interpretation => interpretations[this];
}
