import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

// Now MyApp extends 'Stateful' widget instead of the previous 'Stateless'
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _MyAppState is to be used only by the above stateful widget 'MyApp'
class _MyAppState extends State<MyApp> {
  // added const as the questions remain same from compile time
  static const _questions = [
    {
      'questionText': 'What is your name?',
      'answers': [
        {'text': 'Aditya', 'score': 10},
        {'text': 'Sid', 'score': 9},
        {'text': 'Other', 'score': 8},
      ]
    },
    {
      'questionText': 'What is your age',
      'answers': [
        {'text': '19', 'score': 8},
        {'text': '69', 'score': 10},
        {'text': '27', 'score': 7},
        {'text': '50', 'score': 6}
      ]
    },
    {
      'questionText': 'What is your favorite food',
      'answers': [
        {'text': 'Noodles', 'score': 8},
        {'text': 'Oats', 'score': 10},
        {'text': 'Ice-cream', 'score': 9},
      ]
    },
  ];
  int _quesIndex = 0;
  int _totalScore = 0;

  // for onPressed button - uses setState to rebuild widget tree on change
  void _answerChosen(int score) {
    _totalScore += score;
    setState(() {
      _quesIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // home : Text('hello') -> sets only text
    // home : Scaffold() -> provides a base screen in which we can add widgets
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('in AppBar'),
          backgroundColor: Colors.purple[200],
        ),
        body: (_quesIndex < _questions.length)
            ? Quiz(_questions, _quesIndex, _answerChosen)
            : Result(_totalScore),
      ),
    );
  }
}
