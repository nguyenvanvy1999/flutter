import 'package:get/get.dart';
import 'package:web_dashboard/models/permission_model.dart';

class PermissionsController extends GetxController {
  static PermissionsController instance = Get.find();

  Rx<Permission> permission = Permission(id: '', name: '', displayName: '').obs;
}
