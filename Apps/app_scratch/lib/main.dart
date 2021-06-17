import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // for onPressed button
  void answerChosen() {
    print('Answer chosen!');
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
            Text('Question'),
            ElevatedButton(
              onPressed: answerChosen,
              child: Text('Option 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 chosen!'),
              child: Text('Option 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 3 chosen!'),
              child: Text('Option 3'),
            ),
          ],
        ),
      ),
    );
  }
}
