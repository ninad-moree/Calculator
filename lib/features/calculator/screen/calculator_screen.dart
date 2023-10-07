import 'package:flutter/material.dart';

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
              color: Colors.orangeAccent,
            ),
          ),
          Row(
            children: [
              ButtonWidget(
                text: "1",
                onpress: () {},
              ),
              // ButtonWidget(
              //   text: "2",
              //   onpress: () {},
              //   textColor: Colors.green,
              //   backgroundColor: Colors.red,
              // ),
              // ButtonWidget(),
              // ButtonWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
