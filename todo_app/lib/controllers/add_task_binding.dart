import 'package:get/get.dart';
import 'package:todo_app/controllers/add_task.dart';

class AddTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTaskController>(() => AddTaskController());
  }
}
