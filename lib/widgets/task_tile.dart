import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:x_penditure/Models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  // ignore: non_constant_identifier_names
  final Function LongPressCallback;

  // ignore: non_constant_identifier_names
  TaskTile(
      {this.isChecked,
      this.title,
      this.checkboxCallback,
      this.LongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      autofocus: true,
      onLongPress: LongPressCallback,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
