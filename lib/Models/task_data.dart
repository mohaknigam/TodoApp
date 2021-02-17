import 'package:x_penditure/Models/task.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'This is Milk'),
    Task(name: 'This is Cow'),
    Task(name: 'This is Goat'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
