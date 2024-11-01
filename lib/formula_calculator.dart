import 'package:flutter/material.dart';
import 'dart:math';

class CalculateForm {
  CalculateForm(
      {required this.height, required this.weight, required this.isMale});
  final int height;
  final int weight;
  final bool isMale;
  double _bmi = 0;
  Color _textColor = Color.fromARGB(255, 36, 216, 177);

  String resultBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getClass() {
    if (isMale) {
      if (_bmi < 18) {
        return 'UNDERWEIGHT';
      } else if (_bmi >= 18 && _bmi < 25) {
        return 'NORMAL';
      } else if (_bmi >= 25 && _bmi < 27) {
        return 'OVERWEIGHT';
      } else {
        return 'OBESE';
      }
    } else {
      if (_bmi < 17) {
        return 'UNDERWEIGHT';
      } else if (_bmi >= 17 && _bmi < 23) {
        return 'NORMAL';
      } else if (_bmi >= 23 && _bmi < 27) {
        return 'OVERWEIGHT';
      } else {
        return 'OBESE';
      }
    }
  }

  String getAdvise() {
    if (isMale) {
      if (_bmi > 25) {
        return 'You have a more than normal body weight.\n Try to do more Exercise';
      } else if (_bmi >= 18 && _bmi <= 25) {
        return 'You have a normal body weight.\nGood job!';
      } else {
        return 'You have a lower than normal body weight.\n Try to eat more';
      }
    } else {
      if (_bmi > 27) {
        return 'You have a more than normal body weight.\n Try to do more Exercise';
      } else if (_bmi >= 17 && _bmi <= 23) {
        return 'You have a normal body weight.\nGood job!';
      } else {
        return 'You have a lower than normal body weight.\n Try to eat more';
      }
    }
  }

  Color colorText() {
    if (isMale) {
      if (_bmi >= 25 || _bmi < 18) {
        return Colors.deepOrangeAccent;
      } else {
        return Color(0xFF24D876);
      }
    } else {
      if (_bmi >= 27 || _bmi < 17) {
        return Colors.deepOrangeAccent;
      } else {
        return Color(0xFF24D876);
      }
    }
  }
}
