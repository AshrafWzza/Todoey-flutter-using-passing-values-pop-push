import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? nameTask;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
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
          decoration: const InputDecoration(
            //fillColor: Colors.red,
            //filled: true,
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
          child: const Text(
            'Add',
            style: TextStyle(),
          ),
          style: TextButton.styleFrom(
            //Chane textButton Colors
            primary: Colors.white,
            backgroundColor: Colors.lightBlueAccent,
          ),
        ),
      ],
    );
  }
}
