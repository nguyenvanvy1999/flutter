import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/pages/home/app_bar.dart';
import 'package:todo_app/pages/home/date_picker.dart';
import 'package:todo_app/pages/home/task_bar.dart';
import 'package:todo_app/services/notification_service.dart';
import 'dart:io' show Platform;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late NotificationService notificationService;
  @override
  void initState() {
    super.initState();
    notificationService = NotificationService();
    notificationService.initializeNotification();
    if (Platform.isIOS) {
      notificationService.requestIOSPermissions();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      backgroundColor: context.theme.backgroundColor,
      body: Column(
        children: <Widget>[const TaskBar(), DatePickerTimeline()],
      ),
    );
  }
}
