import 'package:flutter/material.dart';

class Expences {
  final String? id;
  final String? title;
  final double? ammount;
  final DateTime? date;

  Expences({
    @required this.id,
    @required this.title,
    @required this.ammount,
    @required this.date,
  });
}
