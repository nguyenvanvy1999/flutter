import 'package:flutter/material.dart';

double toDouble(TimeOfDay myTime) => myTime.hour + myTime.minute / 60.0;

TimeOfDay parseTime(String time) {
  int hour = int.parse(time.split(':')[0]);
  int minute = int.parse(time.split(':')[1].split(' ')[0]);
  String midday = time.split(':')[1].split(' ')[1];
  return TimeOfDay(hour: midday == 'AM' ? hour : hour + 12, minute: minute);
}

bool validateTime(String startString, String endString) {
  if (toDouble(parseTime(startString)) >= toDouble(parseTime(endString))) {
    return false;
  }
  return true;
}

bool validateText(
  TextEditingController titleController,
  TextEditingController noteController,
) {
  return titleController.text.isNotEmpty && noteController.text.isNotEmpty;
}
