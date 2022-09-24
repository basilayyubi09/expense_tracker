import 'dart:math';

import 'package:expense_tracker/Widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import '../Models/transaction.dart';
import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  void _addNewTransaction(String txTitle, String txAmount) {
    final newTx = Transaction("1", txTitle,
        double.parse(txAmount), DateTime.now());
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  final List<Transaction> _userTransaction = [
    Transaction("1", "Nike Shoes", 15.19, DateTime.now()),
    Transaction("2", "I Phone 13", 48.99, DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          NewTransaction(addNewTransaction: _addNewTransaction),
          TransactionList(_userTransaction)
        ],
      ),
    );
  }
}
