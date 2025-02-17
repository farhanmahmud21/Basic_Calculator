import 'package:flutter/material.dart';
import 'buildButton.dart';

class CalculatorButtons extends StatefulWidget {
  const CalculatorButtons({super.key});

  @override
  State<CalculatorButtons> createState() => _CalculatorButtonsState();
}

class _CalculatorButtonsState extends State<CalculatorButtons> {
  String _output = "0";
  String _input = "";

  String _operand = "";
  double _num1 = 0;
  double _num2 = 0;

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        _output = "0";
        _input = "";
        _num1 = 0;
        _operand = "";
        _num2 = 0;
      } else if (buttonText == "=") {
        _num2 = double.parse(_input);
        if (_operand == "+") {
          _output = (_num1 + _num2).toString();
        } else if (_operand == "÷") {
          _output = (_num1 / _num2).toString();
        } else if (_operand == "-") {
          _output = (_num1 - _num2).toString();
        } else if (_operand == "*") {
          _output = (_num1 * _num2).toString();
        }
        _input = _output;
      } else if (['+', '-', '*', "÷"].contains(buttonText)) {
        _num1 = double.parse(_input);
        _operand = buttonText;
        _input = "";
      } else {
        _input += buttonText;
        _output = _input;
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
                        onPressed: () {
                          _buttonPressed('7');
                        },
                      ),
                      BuildButton(
                        text: '8',
                        color: Colors.grey.shade400,
                        onPressed: () {
                          _buttonPressed('8');
                        },
                      ),
                      BuildButton(
                        text: '9',
                        color: Colors.grey.shade400,
                        onPressed: () {
                          _buttonPressed('9');
                        },
                      ),
                      BuildButton(
                        text: '÷',
                        color: Colors.orange,
                        onPressed: () {
                          _buttonPressed('÷');
                        },
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
                        onPressed: () {
                          _buttonPressed('4');
                        },
                      ),
                      BuildButton(
                        text: '5',
                        color: Colors.grey.shade400,
                        onPressed: () {
                          _buttonPressed('5');
                        },
                      ),
                      BuildButton(
                        text: '6',
                        color: Colors.grey.shade400,
                        onPressed: () {
                          _buttonPressed('6');
                        },
                      ),
                      BuildButton(
                        text: '×',
                        color: Colors.orange,
                        onPressed: () {
                          _buttonPressed('*');
                        },
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
                        onPressed: () {
                          _buttonPressed('1');
                        },
                      ),
                      BuildButton(
                        text: '2',
                        color: Colors.grey.shade400,
                        onPressed: () {
                          _buttonPressed('2');
                        },
                      ),
                      BuildButton(
                        text: '3',
                        color: Colors.grey.shade400,
                        onPressed: () {
                          _buttonPressed('3');
                        },
                      ),
                      BuildButton(
                        text: '-',
                        color: Colors.orange,
                        onPressed: () {
                          _buttonPressed('-');
                        },
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
                        onPressed: () {
                          _buttonPressed('C');
                        },
                      ),
                      BuildButton(
                        text: '0',
                        color: Colors.grey.shade400,
                        onPressed: () {
                          _buttonPressed('0');
                        },
                      ),
                      BuildButton(
                        text: '=',
                        color: Colors.green,
                        onPressed: () {
                          _buttonPressed('=');
                        },
                      ),
                      BuildButton(
                        text: '+',
                        color: Colors.orange,
                        onPressed: () {
                          _buttonPressed('+');
                        },
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
