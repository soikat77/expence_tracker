import 'package:flutter/material.dart';

import './expences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expence Tracker',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Expences> expences = [
    Expences(
      id: 'exp1',
      title: 'Bying a T-Shirt',
      ammount: 200.00,
      date: DateTime.now(),
    ),
    Expences(
      id: 'exp2',
      title: 'Going to Dinner',
      ammount: 175.50,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expence Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Expence Bar in Date'),
            ),
          ),
          Column(
            children: expences.map((exp) {
              return Card(
                  color: Colors.blue[50],
                  elevation: 3,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          exp.ammount.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              exp.title!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              exp.date.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.blue[400],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ));
            }).toList(),
          ),
        ],
      ),
    );
  }
}
