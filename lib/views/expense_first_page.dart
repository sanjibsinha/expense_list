import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/expense_list.dart';

class ExpenseFirstPage extends StatelessWidget {
  ExpenseFirstPage({Key key}) : super(key: key);

  final List<ExpenseList> expenseList = [
    ExpenseList(
      id: '1',
      title: 'Fruits',
      amount: 200.00,
      date: DateTime.now(),
    ),
    ExpenseList(
      id: '2',
      title: 'Vegetables',
      amount: 200.08,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(
            child: Card(
              child: Text('Chart'),
              elevation: 10,
            ),
          ),
          Container(
            child: Column(
              children: expenseList.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 10,
                      child: Row(
                        children: [
                          displayAmount(e),
                          displayTaskAndDate(e),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

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
}
/**
 * 
 */