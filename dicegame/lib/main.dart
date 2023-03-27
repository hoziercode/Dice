//import 'dart:math';

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          // ignore: prefer_const_constructors
          centerTitle: true,
          // ignore: prefer_const_constructors
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left1 = 1;
  int right1 = 1;
  void change() {
    setState(() {
      left1 = Random().nextInt(6) + 1;
      right1 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                change();
              },
              child: Image(
                // ignore: unnecessary_const
                image: AssetImage('images/dice$left1.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                change();
              },
              child: Image(
                // ignore: unnecessary_const
                image: AssetImage('images/dice$right1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
