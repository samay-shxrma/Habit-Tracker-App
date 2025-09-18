import 'package:flutter/material.dart';
import 'package:myapp/Widget/add_transaction.dart';
import 'package:myapp/Widget/summary_card.dart';
import 'package:myapp/Widget/transaction_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Expanse Tracker")),
      body: const Column(children: [
        SummaryCard(),
        Expanded(child: TransactionList())]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) => const AddTransaction(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
