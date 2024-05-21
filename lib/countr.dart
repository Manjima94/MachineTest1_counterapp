

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

int counter = 0;

class _CounterState extends State<Counter> {
  int counter = 0;
  void counterapp() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('COUNTER APP'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 40),
            ),
            FloatingActionButton(
              onPressed: () {
                counterapp();
              },
              child: Icon(Icons.add),
            ),
          
          ],
        ),
      ),
    );
  }
}
