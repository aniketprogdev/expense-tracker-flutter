import 'package:flutter/material.dart';

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
