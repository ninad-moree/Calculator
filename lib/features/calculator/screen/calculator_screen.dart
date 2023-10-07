import 'package:flutter/material.dart';
import 'package:konverter/constants/colors.dart';

import '../widgets/button_widget.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
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
                  const Text(
                    "Input",
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Output",
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
                onpress: () {},
                backgroundColor: operatorColor,
              ),
              ButtonWidget(
                text: "<",
                textColor: orangeColor,
                onpress: () {},
                backgroundColor: operatorColor,
              ),
              ButtonWidget(
                text: "C",
                textColor: orangeColor,
                onpress: () {},
                backgroundColor: operatorColor,
              ),
              ButtonWidget(
                text: "/",
                textColor: orangeColor,
                onpress: () {},
                backgroundColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                text: "7",
                onpress: () {},
              ),
              ButtonWidget(
                text: "8",
                onpress: () {},
              ),
              ButtonWidget(
                text: "9",
                onpress: () {},
              ),
              ButtonWidget(
                text: "x",
                textColor: orangeColor,
                onpress: () {},
                backgroundColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                text: "4",
                onpress: () {},
              ),
              ButtonWidget(
                text: "5",
                onpress: () {},
              ),
              ButtonWidget(
                text: "6",
                onpress: () {},
              ),
              ButtonWidget(
                text: "-",
                textColor: orangeColor,
                onpress: () {},
                backgroundColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                text: "1",
                onpress: () {},
              ),
              ButtonWidget(
                text: "2",
                onpress: () {},
              ),
              ButtonWidget(
                text: "3",
                onpress: () {},
              ),
              ButtonWidget(
                text: "+",
                textColor: orangeColor,
                onpress: () {},
                backgroundColor: operatorColor,
              ),
            ],
          ),
          Row(
            children: [
              ButtonWidget(
                text: "%",
                textColor: orangeColor,
                onpress: () {},
                backgroundColor: operatorColor,
              ),
              ButtonWidget(
                text: "0",
                onpress: () {},
              ),
              ButtonWidget(
                text: ".",
                textColor: orangeColor,
                onpress: () {},
                backgroundColor: operatorColor,
              ),
              ButtonWidget(
                text: "=",
                onpress: () {},
                backgroundColor: orangeColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
