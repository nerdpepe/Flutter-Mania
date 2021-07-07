import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final inputController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Container(
        padding: EdgeInsets.all(7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title: '),
              // onChanged: (value) => titleInput = value,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Price: '),
              // onChanged: (value) => amountInput = value,
              controller: inputController,
            ),
            ElevatedButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(inputController.text),
                );
              },
              child: Text(' Add this Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
