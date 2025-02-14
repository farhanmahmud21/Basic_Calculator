import 'package:flutter/material.dart';

class buildButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function logic;

  const buildButton({super.key, required this.text, required this.color,required this.logic});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.all(8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(24),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: color),
            onPressed: () {
              logic;
            },
            child: Text(text),
          )),
    );
  }
}
