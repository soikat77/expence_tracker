import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expence Tracker'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Expence Bar in Date'),
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blueGrey,
                elevation: 5,
                child: Text('Indivisual Expences'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
