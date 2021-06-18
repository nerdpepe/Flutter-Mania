import 'package:flutter/material.dart';

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
    'What is your name?',
    'What is your age',
    'What is your favorite food'
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
            Text(questions[_quesIndex]),
            ElevatedButton(
              onPressed: _answerChosen,
              child: Text('Option 1'),
            ),
            ElevatedButton(
              onPressed: _answerChosen,
              child: Text('Option 2'),
            ),
            ElevatedButton(
              onPressed: _answerChosen,
              child: Text('Option 3'),
            ),
          ],
        ),
      ),
    );
  }
}
