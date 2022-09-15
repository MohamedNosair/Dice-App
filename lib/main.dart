import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice'),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNameNumber = 1 ;
  int rightNameNumber = 1 ;
  void changeDiceFace(){
  setState(() {
  leftNameNumber = Random().nextInt(6) + 1 ;
  rightNameNumber = Random().nextInt(6) + 1 ;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              onPressed: ()
              {
                changeDiceFace() ;
              },
              child: Image.asset(
                'images/dice$leftNameNumber.png',
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: ()
              {
                changeDiceFace() ;
              },
              child: Image.asset('images/dice$rightNameNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
