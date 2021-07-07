import 'package:flutter/material.dart';

import '../widgets/user_transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput = 'default';
  // String amountInput = '69.69';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            //alignment: Alignment.center,
            width: double.infinity,
            child: Card(
              child: Text(
                'Upper Card',
                textAlign: TextAlign.center,
              ),
              color: Colors.amber,
              elevation: 5,
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
