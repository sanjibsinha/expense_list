import 'package:flutter/foundation.dart';

class ExpenseList {
  String id;
  String title;
  double amount;
  DateTime date;

  ExpenseList({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
