import 'package:flutter/material.dart';
import 'package:myapp/Provider/habit_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final habitProvider = Provider.of<HabitProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Habit Tracker"),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<HabitProvider>(context, listen: false).resetHabits();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daily Progress: ${habitProvider.completeHabits}/${habitProvider.totalHabit} habits completed',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                LinearProgressIndicator(value: habitProvider.totalHabit > 0 ? habitProvider.completeHabits / habitProvider.totalHabit : 0),
                SizedBox(height: 8),
                Text(
                  'Completion Percentage: ${habitProvider.completionPercentage.toStringAsFixed(1)}%',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //Habit List Section
          Expanded(
            child: ListView.builder(
              itemCount: habitProvider.habits.length,
              itemBuilder: (context, index) {
                final habit = habitProvider.habits[index];
                return GestureDetector(
                  onLongPress: () {
                    habitProvider.removeHabit(habit.id);
                  },
                  child: ListTile(
                    title: Text(habit.title),
                    trailing: Checkbox(value: habit.isCompleted, onChanged: (_)=> habitProvider.toggleHabit(habit.id)),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      //Floating Action Button to add new habits
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              String newHabitTitle = '';
              return AlertDialog(
                title: const Text('Add Habit'),
                content: TextField(
                  onChanged: (value) => newHabitTitle = value,
                  decoration: const InputDecoration(hintText: 'Habit Title'),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (newHabitTitle.isNotEmpty) {
                        habitProvider.addHabit(newHabitTitle);
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
