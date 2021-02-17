import 'package:flutter/material.dart';
import 'package:x_penditure/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:x_penditure/Models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              checkboxCallback: (newValue) {
                taskData.updateTask(task);
              },
              LongPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
