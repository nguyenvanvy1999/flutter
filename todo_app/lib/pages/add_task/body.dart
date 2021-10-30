import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/constants/date_time.dart';
import 'package:todo_app/constants/text_style.dart';
import 'package:todo_app/constants/themes.dart';
import 'package:todo_app/services/calendar_service.dart';
import 'package:todo_app/widgets/button.dart';
import 'package:todo_app/widgets/input_field.dart';

class AddTaskBody extends StatefulWidget {
  const AddTaskBody({Key? key}) : super(key: key);

  @override
  AddTaskBodyState createState() => AddTaskBodyState();
}

class AddTaskBodyState extends State<AddTaskBody> {
  DateTime selectedDate = DateTime.now();
  String startTime = DateFormat('hh:mm a').format(DateTime.now());
  String endTime = '11:00 PM';
  int selectedRemind = 5;
  String selectedRepeat = 'None';
  int selectedColor = 1;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

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
            MyInputField(
              title: 'Date',
              hint: DateFormat.yMd().format(selectedDate),
              widget: IconButton(
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.grey,
                ),
                onPressed: () async {
                  var pickedDate = await getDateFromUser(context);
                  setState(() => selectedDate = pickedDate);
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: MyInputField(
                  title: 'Start Time',
                  hint: startTime,
                  widget: IconButton(
                    icon: const Icon(Icons.access_time, color: Colors.grey),
                    onPressed: () async {
                      var pickedTime =
                          await getTimeFromUser(context, startTime);
                      setState(() => startTime = pickedTime);
                    },
                  ),
                )),
                const SizedBox(width: 12),
                Expanded(
                    child: MyInputField(
                  title: 'End Time',
                  hint: endTime,
                  widget: IconButton(
                    icon: const Icon(Icons.access_time, color: Colors.grey),
                    onPressed: () async {
                      var pickedTime = await getTimeFromUser(context, endTime);
                      setState(() => endTime = pickedTime);
                    },
                  ),
                ))
              ],
            ),
            MyInputField(
              title: 'Remind',
              hint: '$selectedRemind minutes early',
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
                    setState(() => selectedRemind = int.parse(newValue!)),
                items: remindList
                    .map<DropdownMenuItem<String>>(
                        (int e) => DropdownMenuItem<String>(
                              value: e.toString(),
                              child: Text(e.toString()),
                            ))
                    .toList(),
              ),
            ),
            MyInputField(
              title: 'Repeat',
              hint: selectedRepeat,
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
                    setState(() => selectedRepeat = newValue!),
                items: repeatList
                    .map<DropdownMenuItem<String>>(
                        (String e) => DropdownMenuItem<String>(
                              value: e,
                              child: Text(e,
                                  style: const TextStyle(color: Colors.grey)),
                            ))
                    .toList(),
              ),
            ),
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
                            (int index) => GestureDetector(
                                  onTap: () =>
                                      setState(() => selectedColor = index),
                                  child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: CircleAvatar(
                                          radius: 14,
                                          backgroundColor: index == 0
                                              ? primaryClr
                                              : index == 1
                                                  ? pinkClr
                                                  : yellowClr,
                                          child: selectedColor == index
                                              ? const Icon(
                                                  Icons.done,
                                                  color: Colors.white,
                                                  size: 16,
                                                )
                                              : Container())),
                                )))
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
