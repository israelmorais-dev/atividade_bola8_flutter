import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Pergunte-me Algo')),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Map<int, String> name = {
    1: 'Yes',
    2: 'No',
    3: 'Ask again later',
    4: 'The answer is yes',
    5: 'I have no idea',
  };
  int ball = Random().nextInt(5) + 1;

  void randomAnswer() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ball = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                'images/ball$ball.png',
              ),
            ),
          ),
          Text(
            name[ball],
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}
