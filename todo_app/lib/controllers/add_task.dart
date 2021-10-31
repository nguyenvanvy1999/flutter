import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/constants/date_time.dart';

class AddTaskController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var startTime = DateFormat('hh:mm a').format(DateTime.now()).obs;
  var endTime = '11:00 PM'.obs;
  var selectedRemind = 5.obs;
  var selectedRepeat = 'None'.obs;
  var selectedColor = 1.obs;

  Future<void> setDateSelected(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(startYear),
        lastDate: DateTime(endYear));
    selectedDate = Rx(pickedDate ?? DateTime.now());
    update();
  }

  Future<void> setStartTimeSelected(BuildContext context) async {
    var pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(
            hour: int.parse(startTime.split(':')[0]),
            minute: int.parse(startTime.split(':')[1].split(' ')[0])));
    startTime = RxString(pickedTime.toString());
    update();
  }

  Future<void> setEndTimeSelected(BuildContext context) async {
    var pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(
            hour: int.parse(endTime.split(':')[0]),
            minute: int.parse(endTime.split(':')[1].split(' ')[0])));
    endTime = RxString(pickedTime.toString());
    update();
  }

  Future<void> setRemindSelected(String? newValue) async {
    selectedRemind = RxInt(int.parse(newValue!));
    update();
  }

  Future<void> setRepeatSelected(String? newValue) async {
    selectedRepeat = RxString(newValue!);
    update();
  }

  Future<void> setColorSelected(int newValue) async {
    selectedColor = RxInt(newValue);
    update();
  }
}
