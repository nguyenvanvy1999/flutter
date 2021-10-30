import 'package:flutter/material.dart';
import 'package:todo_app/constants/date_time.dart';

Future<DateTime> getDateFromUser(BuildContext context) async {
  DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(startYear),
      lastDate: DateTime(endYear));
  return pickedDate ?? DateTime.now();
}

Future<String> getTimeFromUser(BuildContext context, String startTime) async {
  var pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(
          hour: int.parse(startTime.split(':')[0]),
          minute: int.parse(startTime.split(':')[1].split(' ')[0])));
  return pickedTime!.format(context);
}
