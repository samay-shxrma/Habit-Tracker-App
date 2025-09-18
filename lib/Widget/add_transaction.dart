import 'package:flutter/material.dart';
import 'package:myapp/Provider/transaction_provider.dart';
import 'package:provider/provider.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isIncome = true;

  void submitData() {
    final title = _titleController.text;
    final amount = double.tryParse(_amountController.text) ?? 0;

    if (title.isEmpty || amount <= 0) return;
    Provider.of<TransactionProvider>(
      context,
      listen: false,
    ).addTransaction(title, amount, _isIncome);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: "Title")),
          TextField(
            controller: _amountController,
            decoration: InputDecoration(labelText: "Amount")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Income",
                style: TextStyle(
                  color: _isIncome == true ? Colors.green : Colors.black,
                ),
              ),
              Switch(
                value: _isIncome,
                onChanged: (val) {
                  setState(() {
                    _isIncome = val;
                  });
                },
              ),
              Text(
                "Expense",
                style: TextStyle(
                  color: _isIncome == true ? Colors.black : Colors.red,
                ),
              ),
              
            ],
          
          ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(onPressed: submitData, child: Text("Add Transaction")),
          ),
        ],
      ),
    );
  }
}
