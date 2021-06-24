import 'package:flutter/material.dart';

import './randomtext.dart';
import './randombutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _q_index = 0;

  final _quotes = [
    'You are awesome by the way',
    'Buzz off.. meh',
    'Heya sweetie',
    'Have a Great Day!',
  ];

  void _randomize() {
    setState(() {
      _q_index = (_q_index + 1) % _quotes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RandomTeXTer'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RandomText(_quotes, _q_index),
              RandomButton(_randomize),
            ],
          ),
        ),
      ),
    );
  }
}
