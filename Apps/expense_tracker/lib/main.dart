import 'package:flutter/material.dart';

import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(amount: 35, date: DateTime.now(), id: 'Test', title: 'Peanut'),
    Transaction(amount: 69, date: DateTime.now(), id: 'Test2', title: 'Butter')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Column(
              children: transactions
                  .map((tx) => Card(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blueGrey,
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Text(tx.amount.toString()),
                            ),
                            Column(
                              children: [
                                Text(tx.title),
                                Text(tx.date.toString()),
                              ],
                            ),
                          ],
                        ),
                      ))
                  .toList())
        ],
      ),
    );
  }
}
