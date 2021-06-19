import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var questions = [
    {
      'questionText': 'What is your name?',
      'answers': ['Aditya', 'Sid']
    },
    {
      'questionText': 'What is your age',
      'answers': ['19', '69', '27', '50']
    },
    {
      'questionText': 'What is your favorite food',
      'answers': ['Noodles', 'Oats', 'Ice-cream']
    },
  ];
  int _quesIndex = 0;
  // for onPressed button - uses setState to rebuild widget tree on change
  void _answerChosen() {
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
        body: Column(
          children: [
            Question(
              questions[_quesIndex]['questionText'].toString(),
            ),
            ...(questions[_quesIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerChosen, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
