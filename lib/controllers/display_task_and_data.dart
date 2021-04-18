import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/expense_list.dart';

Column displayTaskAndDate(ExpenseList e) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          border: Border.all(
            color: Colors.red,
            width: 5,
          ),
        ),
        child: Card(
          child: Text(
            '${e.title}',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.blue[100]),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(5),
        child: Card(
          child: Text(
            DateFormat('yyyy/MM/dd').format(e.date),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    ],
  );
}
