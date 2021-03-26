import 'package:flutter/material.dart';

import 'widgets/user_txn.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Expense Tracker"),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                UserTxn(),
                Card(
                  color: Colors.blue,
                  elevation: 8,
                  child: Text("Chart!"),
                )
              ],
            ),
          )),
    );
  }
}
