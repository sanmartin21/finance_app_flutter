import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/transaction_provider.dart';

class AddTransactionScreen extends StatelessWidget {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Transação"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: "Descrição"),
            ),
            TextField(
              controller: _amountController,
              decoration: InputDecoration(labelText: "Valor"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final description = _descriptionController.text;
                final amount = double.tryParse(_amountController.text) ?? 0;
                if (description.isNotEmpty && amount != 0) {
                  Provider.of<TransactionProvider>(context, listen: false)
                      .addTransaction(description, amount);
                  Navigator.pop(context);
                }
              },
              child: Text("Adicionar"),
            ),
          ],
        ),
      ),
    );
  }
}
