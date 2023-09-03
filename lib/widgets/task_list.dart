import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';

import '../models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'asd', isDone: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone,
            taskTitle: tasks[index].name,
          checkboxCallBack: (bool){
              setState(() {
                tasks[index].toggleDone();
              });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
