import 'package:flutter/material.dart';
import 'buildButton.dart';

class CalculatorButtons extends StatefulWidget {
  const CalculatorButtons({super.key});

  @override
  State<CalculatorButtons> createState() => _CalculatorButtonsState();
}

class _CalculatorButtonsState extends State<CalculatorButtons> {
  String _output = "0";
  String _currentNumber = "";
  double _num1 = 0;
  String _operand = "";
  bool _newNumber = true;

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "0";
        _currentNumber = "";
        _num1 = 0;
        _operand = "";
        _newNumber = true;
      }
      else if (buttonText == "+" || buttonText == "-" ||
          buttonText == "×" || buttonText == "÷") {
        if (_currentNumber.isNotEmpty) {
          _num1 = double.parse(_currentNumber);
          _operand = buttonText;
          _newNumber = true;
        }
      }
      else if (buttonText == "=") {
        if (_operand.isNotEmpty && _currentNumber.isNotEmpty) {
          double num2 = double.parse(_currentNumber);
          double result = 0;

          switch (_operand) {
            case "+":
              result = _num1 + num2;
              break;
            case "-":
              result = _num1 - num2;
              break;
            case "×":
              result = _num1 * num2;
              break;
            case "÷":
              result = _num1 / num2;
              break;
          }

          _output = result.toString();
          _currentNumber = result.toString();
          _operand = "";
          _newNumber = true;
        }
      }
      else {
        if (_newNumber) {
          _currentNumber = buttonText;
          _newNumber = false;
        } else {
          _currentNumber += buttonText;
        }
        _output = _currentNumber;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          // Result display
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Text(
                _output,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Calculator buttons
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      BuildButton(
                        text: '7',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '8',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '9',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '÷',
                        color: Colors.orange,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      BuildButton(
                        text: '4',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '5',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '6',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '×',
                        color: Colors.orange,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      BuildButton(
                        text: '1',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '2',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '3',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '-',
                        color: Colors.orange,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      BuildButton(
                        text: 'C',
                        color: Colors.red,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '0',
                        color: Colors.grey.shade400,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '=',
                        color: Colors.green,
                        onPressed: _buttonPressed,
                      ),
                      BuildButton(
                        text: '+',
                        color: Colors.orange,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}