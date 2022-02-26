import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'chalo chai lao'),
    Task(name: 'chalo pani lao'),
    Task(name: 'chalo roti lao'),
  ];
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  int get taskCount => _tasks.length;
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
