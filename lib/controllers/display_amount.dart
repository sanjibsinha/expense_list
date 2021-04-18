import 'package:flutter/material.dart';
import '../models/expense_list.dart';

Container displayAmount(ExpenseList e) {
  return Container(
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.yellow[100],
      border: Border.all(
        color: Colors.red,
        width: 5,
      ),
    ),
    child: Card(
      child: Text(
        '\$${e.amount}',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
