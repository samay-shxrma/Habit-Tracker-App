import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myapp/Model/transaction.dart';

class TransactionProvider with ChangeNotifier {
  final List<Transaction> _transactions = [];

  List<Transaction> get transaction => _transactions;
  //for calculating the total income
  double get totalIncome => _transactions
      .where((tx) => tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);
  //for  calculating the total expanses
  double get totalExpanses => _transactions
      .where((tx) => !tx.isIncome)
      .fold(0, (sum, tx) => sum + tx.amount);
  //for the remaining balance
  double get remainingBalance => totalIncome - totalExpanses;
  //method to add an new transaction
  void addTransaction(String title, double amount, bool isIncome) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
      isIncome: isIncome,
    );
    _transactions.add(newTransaction);
    notifyListeners();
  }

  //method to remove
  void removeTransaction(String id) {
    _transactions.removeWhere((tx) => tx.id == id);
    notifyListeners();
  }
}
