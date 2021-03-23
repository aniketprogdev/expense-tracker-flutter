import 'package:flutter/material.dart';

import './transaction.dart';
import 'package:intl/intl.dart';

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
              Column(
                children: transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.purple,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "₹${tx.amount}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tx.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              DateFormat().add_yMMMMd().format(tx.date),
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          )),
    );
  }
}
