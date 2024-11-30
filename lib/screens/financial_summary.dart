import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/transaction_provider.dart';

class FinancialSummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TransactionProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Resumo Financeiro"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Renda Total: R\$${provider.totalIncome.toStringAsFixed(2)}"),
            Text("Despesas Totais: R\$${provider.totalExpenses.toStringAsFixed(2)}"),
            Text("Saldo Líquido: R\$${provider.netBalance.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }
}
