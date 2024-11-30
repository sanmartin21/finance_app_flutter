import 'package:flutter/material.dart';
import '../models/transaction_model.dart';

class TransactionProvider with ChangeNotifier {
  final List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  double get totalIncome => _transactions
      .where((t) => t.amount > 0)
      .fold(0.0, (sum, t) => sum + t.amount);

  double get totalExpenses => _transactions
      .where((t) => t.amount < 0)
      .fold(0.0, (sum, t) => sum + t.amount);

  double get netBalance => totalIncome + totalExpenses;

  void addTransaction(String description, double amount) {
    _transactions.add(Transaction(
      description: description,
      amount: amount,
      date: DateTime.now(),
    ));
    notifyListeners();
  }
}
