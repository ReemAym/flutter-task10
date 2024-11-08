import 'package:flutter/material.dart';

import 'task_model.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel>? tasks = [
    TaskModel(task: 'Task 1', isDone: false),
    TaskModel(task: 'Task 1', isDone: false),
  ];

  void addTask(String taskName) {
    tasks?.add(TaskModel(task: taskName, isDone: false));
    notifyListeners();
  }

  void updateTask(TaskModel task) {
    task.changeDone();
    notifyListeners();
  }

  void deleteTask(TaskModel task) {
    tasks?.remove(task);
    notifyListeners();
  }
}
