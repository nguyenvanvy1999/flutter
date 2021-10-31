import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/constants/themes.dart';
import 'package:todo_app/controllers/add_task_binding.dart';
import 'package:todo_app/pages/add_task/add_task.dart';
import 'package:todo_app/pages/home/home_page.dart';
import 'package:todo_app/services/theme_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init('theme');
  await GetStorage.init('date');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => const HomePage()),
          GetPage(
              name: '/second',
              page: () => const AddTask(),
              binding: AddTaskBinding()),
        ],
        title: 'Todo App',
        theme: Themes.light,
        darkTheme: Themes.dark,
        themeMode: ThemeService().theme,
        home: const HomePage());
  }
}
