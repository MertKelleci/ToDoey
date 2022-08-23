// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:todoey_app/model/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (context, index) {
        return TaskTile(
            title: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (dummy) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
