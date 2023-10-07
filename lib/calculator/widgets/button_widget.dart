import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Function(String) onPressedCallback;
  const ButtonWidget({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.backgroundColor = buttonColor,
    required this.onPressedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(22),
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () => onPressedCallback(text),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
