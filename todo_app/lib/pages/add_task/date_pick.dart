import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/constants/text_style.dart';
import 'package:todo_app/controllers/add_task.dart';

class MyDatePicker extends StatelessWidget {
  MyDatePicker({Key? key}) : super(key: key);
  final AddTaskController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Date', style: titleStyle),
          Container(
            height: 52,
            padding: const EdgeInsets.only(left: 14),
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Expanded(
                  child: Obx(() => TextFormField(
                        readOnly: true,
                        autofocus: false,
                        cursorColor: Get.isDarkMode
                            ? Colors.grey[100]
                            : Colors.grey[600],
                        style: subTitleStyle,
                        decoration: InputDecoration(
                          hintText: DateFormat.yMd()
                              .format(controller.selectedDate.value),
                          hintStyle: subTitleStyle,
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: context.theme.backgroundColor,
                                  width: 0)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: context.theme.backgroundColor,
                                  width: 0)),
                        ),
                      )),
                ),
                IconButton(
                    icon: const Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () async => controller.setDateSelected(context))
              ],
            ),
          )
        ],
      ),
    );
  }
}
