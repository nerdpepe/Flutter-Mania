import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    Transaction(
        amount: 35.42, date: DateTime.now(), id: 'Test1', title: 'Shoes'),
    Transaction(
        amount: 69.78, date: DateTime.now(), id: 'Test2', title: 'USB Cable')
  ];
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
          Card(
            elevation: 7,
            child: Container(
              padding: EdgeInsets.all(7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title: '),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Price: '),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(' Add this Transaction'),
                  )
                ],
              ),
            ),
          ),
          Column(
              children: transactions
                  .map((tx) => Card(
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blueGrey,
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: Text(
                                'Rs.${tx.amount}',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tx.title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  DateFormat.yMMMd().format(tx.date),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
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
