import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_list.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? nameTask;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Add Task',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.w500,
            color: Colors.lightBlueAccent,
          ),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            filled: true,
            hintText: 'Add new task',
          ),
          onChanged: (value) {
            nameTask = value;
          },
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, nameTask); //Passing value Backward
          },
          child: Text(
            'Add',
            style: TextStyle(),
          ),
          style: TextButton.styleFrom(
            //Chane textbutton Colors
            primary: Colors.white,
            backgroundColor: Colors.lightBlueAccent,
          ),
        ),
      ],
    );
  }
}
