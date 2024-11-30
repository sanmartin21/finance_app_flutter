import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/add_transaction.dart';
import './screens/transaction_history.dart';
import './screens/financial_summary.dart';
import './providers/transaction_provider.dart';

void main() {
  runApp(MyFinanceApp());
}

class MyFinanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionProvider(),
      child: MaterialApp(
        title: 'FinanceApp',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FinanceApp"),
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
              child: Text("Adicionar Transação"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FinancialSummaryScreen()),
                );
              },
              child: Text("Resumo Financeiro"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionHistoryScreen()),
                );
              },
              child: Text("Histórico de Transações"),
            ),
          ],
        ),
      ),
    );
  }
}
