import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function(String) onPressed;

  const BuildButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(4),
        child: SizedBox(
          height: 70,
          child: Material(
            color: color,
            borderRadius: BorderRadius.circular(4),
            child: InkWell(
              onTap: () => onPressed(text),
              borderRadius: BorderRadius.circular(4),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}