import 'package:get/get.dart';
import 'package:todo_app/db/db_helper.dart';
import 'package:todo_app/models/task.dart';

class TaskController extends GetxController {
  var taskList = <Task>[].obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;

  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task);
  }

  void getTask() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    taskList.assignAll(tasks.map((data) => Task.fromJson(data)).toList());
  }

  void deleteTask(Task task) async {
    await DBHelper.delete(task);
  }

  void maskTaskCompleted(int id) async {
    await DBHelper.update(id);
  }

  void updateDate(DateTime dateTime) {
    selectedDate = Rx(dateTime);
  }
}
