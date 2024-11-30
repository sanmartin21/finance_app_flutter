import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/transaction_provider.dart';

class TransactionHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TransactionProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Histórico de Transações"),
      ),
      body: ListView.builder(
        itemCount: provider.transactions.length,
        itemBuilder: (context, index) {
          final transaction = provider.transactions[index];
          return ListTile(
            title: Text(transaction.description),
            subtitle: Text(transaction.date.toLocal().toString()),
            trailing: Text(
              "R\$${transaction.amount.toStringAsFixed(2)}",
              style: TextStyle(
                color: transaction.amount > 0 ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
