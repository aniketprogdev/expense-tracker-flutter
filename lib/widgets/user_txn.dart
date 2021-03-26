import 'package:expense_tracker/widgets/tx_form.dart';
import 'package:expense_tracker/widgets/tx_list.dart';
import 'package:flutter/material.dart';

import './tx_form.dart';
import './tx_list.dart';
import '../models/transaction.dart';

class UserTxn extends StatefulWidget {
  @override
  _UserTxnState createState() => _UserTxnState();
}

class _UserTxnState extends State<UserTxn> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Onions',
      amount: 120.32,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shoes',
      amount: 250.12,
      date: DateTime.now(),
    ),
  ];
  void _addNewTx(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TxList(transactions),
        TxForm(_addNewTx),
      ],
    );
  }
}
