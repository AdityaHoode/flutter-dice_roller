import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceOneValue = 1;
  int diceTwoValue = 1;

  void changeDice1Face() {
    setState(() {
      diceOneValue = Random().nextInt(6) + 1;
    });
  }

  void changeDice2Face() {
    setState(() {
      diceTwoValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice1Face();
              },
              child: Image.asset('images/dice$diceOneValue.png'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice2Face();
              },
              child: Image.asset('images/dice$diceTwoValue.png'),
            ),
          )
        ],
      ),
    );
  }
}
