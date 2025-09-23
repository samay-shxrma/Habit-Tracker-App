import 'package:flutter/material.dart';
import 'package:myapp/Model/habit_model.dart';

class HabitProvider with ChangeNotifier {
  final List<Habit> _habits = [];
  List<Habit> get habits => _habits;
  int get totalHabit => _habits.length;
  //getter to calculate how many habits have been completed
  int get completeHabits => _habits.where((habit) => habit.isCompleted).length;
  //calculate the percentage
  double get completionPercentage {
    if (totalHabit == 0) return 0;
    return (completeHabits / totalHabit) * 100;
  }

  //method to  add a new habit
  void addHabit(String title) {
    final newHabit = Habit(id: DateTime.now().toString(), title: title);
    _habits.add(newHabit);
    notifyListeners();
  }

  //method to toggle
  void toggleHabit(String id) {
    final index = _habits.indexWhere((habit) => habit.id == id);
    if (index != 1) {
      _habits[index].isCompleted = !_habits[index].isCompleted;
      notifyListeners();
    }
  }

  //to reset
  void resetHabits() {
    for (var habit in _habits) {
      habit.isCompleted = false;
    }
    notifyListeners();
  }

  //not delete the items
  void removeHabit(String id) {
    _habits.removeWhere((tx) => tx.id == id);
    notifyListeners();
  }
}
