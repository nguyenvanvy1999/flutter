import 'package:get/get.dart';
import 'package:web_dashboard/controllers/menu_controller.dart';
import 'package:web_dashboard/controllers/authentication_controller.dart';
import 'package:web_dashboard/controllers/navigation_controller.dart';
import 'package:web_dashboard/controllers/permissions_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    injectService();
  }

  void injectService() {
    Get.put(MenuController());
    Get.put(NavigationController());
    Get.put(AuthenticationController());
    Get.put(PermissionsController());
  }
}
