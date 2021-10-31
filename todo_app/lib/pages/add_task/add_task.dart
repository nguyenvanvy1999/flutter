import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/pages/add_task/body.dart';
import 'package:todo_app/pages/add_task/task_bar.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: const AddTaskAppBar(),
      body: AddTaskBody(),
    );
  }
}
