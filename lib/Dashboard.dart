import 'package:expense_tracker/Widgets/user_transactions.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: const Text("Show Chart Here"),
            ),
          ),
          const UserTransaction()
        ],
      ),
    ));
  }
}
