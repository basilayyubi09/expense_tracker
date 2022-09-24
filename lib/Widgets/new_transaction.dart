import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction({Key? key, required this.addNewTransaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                  fillColor: Colors.lightBlueAccent,
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(15),
                  labelText: "Title",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  fillColor: Colors.lightBlueAccent,
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(15),
                  labelText: "Amount",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  onPressed: () {

                    addNewTransaction(
                        titleController.text, amountController.text);
                  },
                  child: const Text(
                    "Add Transaction",
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.w900),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
