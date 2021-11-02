import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/controllers/task_controller.dart';
import 'package:todo_app/widgets/button.dart';
import 'package:todo_app/constants/text_style.dart';
import 'package:todo_app/pages/add_task/add_task.dart';
import 'package:get/get.dart';

class TaskBar extends StatelessWidget {
  TaskBar({Key? key}) : super(key: key);
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat.yMMMd().format(DateTime.now()),
                        style: subHeadingStyle,
                      ),
                      Text(
                        'Today',
                        style: headingStyle,
                      ),
                    ])),
            MyButton(
              label: '+ Add Task',
              onTap: () async {
                await Get.to(() => const AddTask());
                taskController.getTask();
              },
            )
          ],
        ));
  }
}
