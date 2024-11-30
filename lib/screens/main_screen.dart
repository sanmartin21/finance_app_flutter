import 'package:flutter/material.dart';
import 'add_transaction.dart';
import 'financial_summary.dart';
import 'transaction_history.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FinanceApp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTransactionScreen()),
                );
              },
              child: Text('Adicionar Transação'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FinancialSummaryScreen()),
                );
              },
              child: Text('Resumo Financeiro'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionHistoryScreen()),
                );
              },
              child: Text('Histórico de Transações'),
            ),
          ],
        ),
      ),
    );
  }
}
