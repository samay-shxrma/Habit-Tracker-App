import 'package:flutter/material.dart';
import 'package:myapp/Provider/habit_provider.dart';
import 'package:myapp/Screen/habit_list.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> HabitProvider())
      ],
      child: const MaterialApp(
        home: const HomeScreen(),
      ),
    );
  }
}
