import 'package:flutter/material.dart';
import 'package:myapp/Provider/transaction_provider.dart';
import 'package:provider/provider.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(context);

    return Card(
      color: const Color.fromARGB(255, 178, 231, 255),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          
          children: [
            const Text(
              'Monthly Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Income: \$${transactionProvider.totalIncome.toStringAsFixed(2)}',
                ),
                Text(
                  'Total Income: \$${transactionProvider.totalExpanses.toStringAsFixed(2)}',
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Remaining Balance: \$${transactionProvider.remainingBalance.toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
