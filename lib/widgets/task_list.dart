import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatefulWidget {
  List<Task>? tasks;
  TaskList({required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    //user ListView.builder unKnown number of ListTile or Infinte numbers
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          title: widget.tasks![index].name,
          checkedBox: widget.tasks![index].isDone,
        );
      },
      itemCount: widget.tasks!.length, //mandatory -->Crash App
    );
  }
}
