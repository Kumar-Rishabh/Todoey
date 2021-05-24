import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks=[
    Task(name:'hello'),
    Task(name:'go to gym'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }
  void addTask(String newtask){
    final task=Task(name:newtask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}