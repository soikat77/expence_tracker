import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expence Tracker'),
      ),
      body: Center(
        child: Text('All yor expences will show here'),
      ),
    );
  }
}
