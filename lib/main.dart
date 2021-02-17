import 'package:flutter/material.dart';
import 'package:x_penditure/Screens/TaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:x_penditure/Models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
