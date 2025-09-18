import 'package:flutter/material.dart';
import 'package:myapp/Provider/transaction_provider.dart';
import 'package:myapp/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TransactionProvider(),
      child: const MaterialApp(
        home: const HomeScreen(),
      ),
      
    );
  }
}
