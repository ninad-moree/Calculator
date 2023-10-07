import 'package:flutter/material.dart';
import 'package:konverter/constants/colors.dart';

import '../services/calculator_logic.dart';
import '../widgets/button_widget.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double firstNum = 0.0;
  double secondNum = 0.0;

  var input = "";
  var output = "";

  var operation = "";

  void updateState(String newInput, String newOutput) {
    setState(() {
      input = newInput;
      output = newOutput;
    });
  }

  void handleButtonClick(String value) {
    onButtonClick(value, input, output, updateState, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    input,
                    style: const TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    output,
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
          Row(
            children: [
              ButtonWidget(
                text: "AC",
                textColor: orangeColor,
                backgroundColor: operatorColor,
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "<",
                textColor: orangeColor,
                backgroundColor: operatorColor,
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "C",
                textColor: orangeColor,
                backgroundColor: operatorColor,
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "/",
                textColor: orangeColor,
                backgroundColor: operatorColor,
                onPressedCallback: handleButtonClick,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                text: "7",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "8",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "9",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "x",
                textColor: orangeColor,
                backgroundColor: operatorColor,
                onPressedCallback: handleButtonClick,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                text: "4",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "5",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "6",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "-",
                onPressedCallback: handleButtonClick,
                textColor: orangeColor,
                backgroundColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                text: "1",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "2",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "3",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "+",
                onPressedCallback: handleButtonClick,
                textColor: orangeColor,
                backgroundColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                text: "%",
                textColor: orangeColor,
                backgroundColor: operatorColor,
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "0",
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: ".",
                textColor: orangeColor,
                backgroundColor: operatorColor,
                onPressedCallback: handleButtonClick,
              ),
              ButtonWidget(
                text: "=",
                backgroundColor: orangeColor,
                onPressedCallback: handleButtonClick,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
