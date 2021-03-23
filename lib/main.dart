import 'package:flutter/material.dart';

import './transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Onions',
      amount: 120.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Shoes',
      amount: 250.12,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Expense Tracker"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.blue,
                elevation: 8,
                child: Text("Chart!"),
              ),
              Card(
                color: Colors.red,
                elevation: 8,
                child: Text("Txn!"),
              )
            ],
          )),
    );
  }
}
