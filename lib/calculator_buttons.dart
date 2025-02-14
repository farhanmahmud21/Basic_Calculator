import 'package:flutter/material.dart';
import 'package:new2/buildButton.dart';

class Calculator_buttons extends StatelessWidget {
  const Calculator_buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            buildButton(
              color: Colors.grey,
              text: '7',
              logic: ,
            ),
            buildButton(
              color: Colors.grey,
              text: '8',
            ),
            buildButton(
              color: Colors.grey,
              text: '9',
            ),
            buildButton(
              color: Colors.orange,
              text: '÷',
            )
          ],
        ),
        Row(
          children: [
            buildButton(
              color: Colors.grey,
              text: '4',
            ),
            buildButton(
              color: Colors.grey,
              text: '5',
            ),
            buildButton(
              color: Colors.grey,
              text: '6',
            ),
            buildButton(
              color: Colors.orange,
              text: '*',
            )
          ],
        ),
        Row(
          children: [
            buildButton(
              color: Colors.grey,
              text: '1',
            ),
            buildButton(
              color: Colors.grey,
              text: '2',
            ),
            buildButton(
              color: Colors.grey,
              text: '3',
            ),
            buildButton(
              color: Colors.orange,
              text: 'x',
            ),
          ],
        ),
        Row(
          children: [
            buildButton(
              color: Colors.red,
              text: 'C',
            ),
            buildButton(
              color: Colors.grey,
              text: '0',
            ),
            buildButton(
              color: Colors.green,
              text: '='
                  '',
            ),
            buildButton(
              color: Colors.orange,
              text: '+',
            ),
          ],
        ),
      ],
    );
  }
}
