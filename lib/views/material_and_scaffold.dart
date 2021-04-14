import 'package:flutter/material.dart';
import 'expense_first_page.dart';

class ExpenseApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ExpensePage(),
    );
  }
}

class ExpensePage extends StatelessWidget {
  const ExpensePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense List'),
      ),
      body: ExpenseFirstPage(),
    );
  }
}
