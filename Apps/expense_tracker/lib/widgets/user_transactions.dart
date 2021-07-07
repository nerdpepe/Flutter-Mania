import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      amount: 35.42,
      date: DateTime.now(),
      id: 'Test1',
      title: 'Shoes',
    ),
    Transaction(
      amount: 69.78,
      date: DateTime.now(),
      id: 'Test2',
      title: 'USB Cable',
    )
  ];

  void _addTransaction(String txTitle, double txAmount) {
    final newTex = Transaction(
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString(),
        title: txTitle);

    setState(() {
      _userTransactions.add(newTex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(_addTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
