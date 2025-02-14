import 'package:flutter/material.dart';

import 'buildButton.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            alignment: Alignment.bottomRight,
            height: 22,
            child: Text('Result',style: TextStyle(color: Colors.white,fontSize: 40),
            ),
            
          
          ),
        ),
        Expanded(child: Calculator_buttons()),

      ],)
    );
  }
}

