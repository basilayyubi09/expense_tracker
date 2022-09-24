import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  const TransactionList(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return //Details
        Expanded(
      child: ListView.builder(
        itemCount: transaction.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white70),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          "\$${transaction[index].amount}",
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction[index].title,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          DateFormat.yMMMEd().format(transaction[index].date),
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black45),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
