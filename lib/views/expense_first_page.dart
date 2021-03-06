import 'package:flutter/material.dart';
import '../models/expense_list.dart';
import '../controllers/display_task_and_data.dart';
import '../controllers/display_amount.dart';

class ExpenseFirstPage extends StatefulWidget {
  ExpenseFirstPage({Key key}) : super(key: key);

  @override
  _ExpenseFirstPageState createState() => _ExpenseFirstPageState();
}

class _ExpenseFirstPageState extends State<ExpenseFirstPage> {
  final List<ExpenseList> expenseList = [];

  void addTaskAndAmount(String title, double amount) {
    final expense = ExpenseList(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      expenseList.add(expense);
    });
  }

  void deleteExpenseList(String id) {
    setState(() {
      expenseList.removeWhere((element) => element.id == id);
    });
  }

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ITEM',
                      suffixStyle: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'AMOUNT',
                      suffixStyle: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    controller: amountController,
                    onSubmitted: (String value) async {
                      await showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Thanks!'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      addTaskAndAmount(
                        titleController.text,
                        double.parse(amountController.text),
                      );
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: expenseList.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    TextButton(
                      onPressed: () {
                        deleteExpenseList(e.id);
                      },
                      child: Text(
                        'DELETE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
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
}
