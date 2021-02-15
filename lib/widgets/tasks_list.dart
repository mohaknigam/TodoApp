import 'package:flutter/material.dart';
import 'package:x_penditure/widgets/task_tile.dart';
import 'package:x_penditure/Models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'This is Milk'),
    Task(name: 'This is Cow'),
    Task(name: 'This is Goat'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            title: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool newValue) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
