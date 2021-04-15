import 'package:flutter/material.dart';
import 'package:expense_list/models/expense_list.dart';
import 'package:flutter/src/widgets/container.dart';

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
            width: double.infinity,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            color: Theme.of(context).accentColor,
            child: Card(
              child: Text(
                'Chart',
                style: Theme.of(context).textTheme.headline5,
              ),
              elevation: 10,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: expenseList.map((expense) {
              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.insert_emoticon_rounded),
                    Column(
                      children: [
                        Card(
                          child: Text(
                            'Item: ${expense.title}',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          elevation: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          child: Text('${expense.date.toString()}',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              )),
                          elevation: 10,
                        ),
                      ],
                    ),
                    Card(
                      child: Text(
                        '${expense.amount.toString()}',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      elevation: 10,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
/**
 * 
 */