import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/constants/date_time.dart';
import 'package:todo_app/constants/text_style.dart';
import 'package:todo_app/constants/themes.dart';
import 'package:todo_app/controllers/add_task.dart';
import 'package:todo_app/widgets/button.dart';
import 'package:todo_app/widgets/input_field.dart';

class AddTaskBody extends GetWidget<AddTaskController> {
  @override
  final AddTaskController controller = Get.put(AddTaskController());

  final TextEditingController titleController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  AddTaskBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add task',
              style: headingStyle,
            ),
            MyInputField(
              title: 'Title',
              hint: 'Enter your title',
              controller: titleController,
            ),
            MyInputField(
                title: 'Note',
                hint: 'Enter your note',
                controller: noteController),
            Obx(
              () => MyInputField(
                title: 'Date',
                hint: DateFormat.yMd().format(controller.selectedDate.value),
                widget: IconButton(
                    icon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () async => controller.setDateSelected(context)),
              ),
            ),
            // MyDatePicker(),
            Row(
              children: [
                Expanded(
                    child: Obx(() => MyInputField(
                          title: 'Start Time',
                          hint: controller.startTime.value,
                          widget: IconButton(
                            icon: const Icon(Icons.access_time,
                                color: Colors.grey),
                            onPressed: () async =>
                                controller.setStartTimeSelected(context),
                          ),
                        ))),
                const SizedBox(width: 12),
                Expanded(
                    child: Obx(() => MyInputField(
                          title: 'End Time',
                          hint: controller.endTime.value,
                          widget: IconButton(
                              icon: const Icon(Icons.access_time,
                                  color: Colors.grey),
                              onPressed: () async =>
                                  controller.setEndTimeSelected(context)),
                        )))
              ],
            ),
            Obx(() => MyInputField(
                  title: 'Remind',
                  hint: '$controller.selectedRemind.value minutes early',
                  widget: DropdownButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    iconSize: 32,
                    elevation: 6,
                    style: subTitleStyle,
                    underline: Container(
                      height: 0,
                    ),
                    onChanged: (String? newValue) =>
                        controller.setRemindSelected(newValue),
                    items: remindList
                        .map<DropdownMenuItem<String>>(
                            (int e) => DropdownMenuItem<String>(
                                  value: e.toString(),
                                  child: Text(e.toString()),
                                ))
                        .toList(),
                  ),
                )),
            Obx(() => MyInputField(
                  title: 'Repeat',
                  hint: controller.selectedRepeat.value,
                  widget: DropdownButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    iconSize: 32,
                    elevation: 4,
                    style: subTitleStyle,
                    underline: Container(
                      height: 0,
                    ),
                    onChanged: (String? newValue) =>
                        controller.setRepeatSelected(newValue),
                    items: repeatList
                        .map<DropdownMenuItem<String>>((String e) =>
                            DropdownMenuItem<String>(
                              value: e,
                              child: Text(e,
                                  style: const TextStyle(color: Colors.grey)),
                            ))
                        .toList(),
                  ),
                )),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Color', style: titleStyle),
                    const SizedBox(
                      height: 8,
                    ),
                    Wrap(
                        children: List<Widget>.generate(
                            3,
                            (int index) => Obx(() => GestureDetector(
                                  onTap: () =>
                                      controller.setColorSelected(index),
                                  child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundColor: index == 0
                                              ? primaryClr
                                              : index == 1
                                                  ? pinkClr
                                                  : yellowClr,
                                          child:
                                              controller.selectedColor.value ==
                                                      index
                                                  ? const Icon(
                                                      Icons.done,
                                                      color: Colors.white,
                                                      size: 16,
                                                    )
                                                  : Container())),
                                ))))
                  ],
                ),
                MyButton(label: 'Create Task', onTap: () => null),
              ],
            )
          ],
        ),
      ),
    );
  }
}
