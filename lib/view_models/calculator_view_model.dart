import 'package:flutter/material.dart';
import 'package:flutter_kalkulator/models/calculator_model.dart';

class CalculatorViewModel with ChangeNotifier {
  double a = 0;
  double b = 0;
  double result = 0;
  String tempDisplay = "0";

  List<CalculatorModel> button = [
    CalculatorModel(symbol: "AC", operator: 'clear'),
    CalculatorModel(symbol: "±", operator: 'plus-min'),
    CalculatorModel(symbol: "%", operator: 'percent'),
    CalculatorModel(symbol: "÷", operator: 'division'),
    CalculatorModel(symbol: "7", operator: 'number'),
    CalculatorModel(symbol: "8", operator: 'number'),
    CalculatorModel(symbol: "9", operator: 'number'),
    CalculatorModel(symbol: "\u00d7", operator: 'multiplication'),
    CalculatorModel(symbol: "4", operator: 'number'),
    CalculatorModel(symbol: "5", operator: 'number'),
    CalculatorModel(symbol: "6", operator: 'number'),
    CalculatorModel(symbol: "-", operator: 'subtraction'),
    CalculatorModel(symbol: "1", operator: 'number'),
    CalculatorModel(symbol: "2", operator: 'number'),
    CalculatorModel(symbol: "3", operator: 'number'),
    CalculatorModel(symbol: "+", operator: 'summation'),
    CalculatorModel(symbol: "\u27f3", operator: 'restart'),
    CalculatorModel(symbol: "0", operator: 'number'),
    CalculatorModel(symbol: ".", operator: 'comma'),
    CalculatorModel(symbol: "=", operator: 'results'),
  ];

  changeDisplay(String number) {
    if (double.tryParse(tempDisplay) == 0) {
      tempDisplay = number;
    } else {
      tempDisplay = tempDisplay + number;
    }
    notifyListeners();
  }

  clear() {
    tempDisplay = "0";
    notifyListeners();
  }

  plusMinus() {
    if (double.tryParse(tempDisplay)! > 0) {
      tempDisplay = "-" + tempDisplay;
    } else {
      tempDisplay = tempDisplay.replaceFirst(RegExp(r'-'), '');
    }
    notifyListeners();
  }

  multiplication() {
    a = double.tryParse(tempDisplay)!;

    result = a * b;
    print(result);
    notifyListeners();
  }

  division() {
    a = double.tryParse(tempDisplay)!;

    result = a / b;
    print(result);
    notifyListeners();
  }

  decisionMaking(String operator, String symbol) {
    if (operator == "number") {
      changeDisplay(symbol);
    } else if (operator == "clear") {
      clear();
    } else if (operator == "plus-min") {
      print('objectff');
      plusMinus();
    } else if (operator == "multiplication") {
      multiplication();
    } else if (operator == "division") {
      division();
    } else {}
  }
}
