import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/constants/text_style.dart';
import 'package:todo_app/constants/themes.dart';
import 'package:todo_app/controllers/task_controller.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/pages/home/task_title.dart';

class ShowTask extends StatelessWidget {
  ShowTask({Key? key}) : super(key: key);
  final TaskController taskController = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Obx(() {
      return ListView.builder(
          itemCount: taskController.taskList.length,
          itemBuilder: (_, index) {
            Task task = taskController.taskList[index];
            if (task.repeat == 'Daily') {
              return showListTask(context, task);
            }
            if (task.date ==
                DateFormat.yMd().format(taskController.selectedDate.value)) {
              return showListTask(context, task);
            } else {
              return Container();
            }
          });
    }));
  }

  showListTask(BuildContext context, Task task) {
    return AnimationConfiguration.staggeredList(
      position: 2,
      child: SlideAnimation(
        child: FadeInAnimation(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  showBottomSheet(context, task);
                },
                child: TaskTile(null, task),
              )
            ],
          ),
        ),
      ),
    );
  }

  showBottomSheet(BuildContext context, Task task) {
    Get.bottomSheet(Container(
      padding: const EdgeInsets.only(top: 4),
      height: task.isComplete == 1
          ? MediaQuery.of(context).size.height * 0.24
          : MediaQuery.of(context).size.height * 0.32,
      color: Get.isDarkMode ? darkGreyClr : Colors.white,
      child: Column(
        children: [
          Container(
            height: 6,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Get.isDarkMode ? Colors.grey[600] : Colors.grey[300]),
          ),
          const Spacer(),
          task.isComplete == 1
              ? Container()
              : bottomSheetButton(
                  label: 'Task Completed',
                  onTap: () {
                    taskController.maskTaskCompleted(task.id!);
                    taskController.getTask();
                    Get.back();
                  },
                  clr: primaryClr,
                  context: context),
          const SizedBox(
            height: 20,
          ),
          bottomSheetButton(
              label: 'Delete Task',
              onTap: () {
                taskController.deleteTask(task);
                taskController.getTask();
                Get.back();
              },
              clr: Colors.red[300]!,
              context: context),
          bottomSheetButton(
              label: 'Close',
              onTap: () => Get.back(),
              clr: Colors.red[300]!,
              isClose: true,
              context: context),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ));
  }

  bottomSheetButton(
      {required String label,
      void Function()? onTap,
      required Color clr,
      bool isClose = false,
      required BuildContext context}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          height: 50,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
              color: isClose
                  ? Get.isDarkMode
                      ? Colors.grey[600]!
                      : Colors.grey[300]!
                  : clr,
              border: Border.all(
                  width: 2, color: isClose ? Colors.transparent : clr),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(label,
                  style: isClose
                      ? titleStyle
                      : titleStyle.copyWith(
                          color: Colors.white,
                        )))),
      // child: ,
    );
  }
}
