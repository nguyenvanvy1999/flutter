import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/pages/home/date_picker.dart';
import 'package:todo_app/pages/home/show_task.dart';
import 'package:todo_app/pages/home/task_bar.dart';
import 'package:todo_app/services/notification_service.dart';
import 'package:todo_app/services/theme_service.dart';
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
      appBar: appBar(),
      backgroundColor: context.theme.backgroundColor,
      body: Column(
        children: <Widget>[
          TaskBar(),
          DatePickerTimeline(),
          const SizedBox(height: 10),
          ShowTask()
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
        },
        child: Icon(
          Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round,
          size: 20,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      actions: const [
        CircleAvatar(
          backgroundImage: AssetImage('assets/icons/profile.png'),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
