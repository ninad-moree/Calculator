// calculator_logic.dart
import 'package:flutter/material.dart';
import 'package:konverter/constants/colors.dart';
import 'package:math_expressions/math_expressions.dart';

void onButtonClick(String value, String input, String output,
    Function(String, String) updateState, BuildContext context) {
  String newInput = input;
  String newOutput = output;

  if (value == "AC") {
    newInput = "";
    newOutput = "";
  } else if (value == "<") {
    if (newInput.isNotEmpty) {
      newInput = newInput.substring(0, newInput.length - 1);
    }
  } else if (value == "=") {
    if (input.isNotEmpty) {
      var userInput = input;
      userInput = input.replaceAll("x", "*");
      Parser p = Parser();

      Expression expression = p.parse(userInput);

      ContextModel cm = ContextModel();

      var finalValue = expression.evaluate(EvaluationType.REAL, cm);

      newOutput = finalValue.toString();

      newInput = newOutput;
    }
  } else if (value == "C") {
    popUp(context);
  } else {
    newInput += value;
  }

  updateState(newInput, newOutput);
}

Future<dynamic> popUp(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: buttonColor,
        title: Text(
          'Not Yet Implemented',
          style: TextStyle(
            color: Colors.orange[600],
          ),
        ),
        content: const SingleChildScrollView(
          child: ListBody(
            children: [
              Text(
                'Will get implemented later. Sorry for inconvinence',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.orange),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
