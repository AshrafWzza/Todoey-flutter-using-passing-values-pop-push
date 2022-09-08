import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatefulWidget {
  List<Task>? tasks;
  TaskList({Key? key, required this.tasks}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    //user ListView.builder unKnown number of ListTile or Infinte numbers
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(height: 0.5),
      itemBuilder: (BuildContext context, int index) {
        if (index == 0 || index == widget.tasks!.length + 1) {
          return Container();
        }
        return TaskTile(
          title: widget.tasks![index - 1].name,
          checkedBox: widget.tasks![index - 1].isDone,
        );
      },
      itemCount: widget.tasks!.length + 2, //mandatory -->Crash App
    );
  }
}
