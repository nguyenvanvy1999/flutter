import 'package:get/get.dart';
import 'package:web_dashboard/constants/backend.dart';
import 'package:web_dashboard/models/permission_model.dart';

class PermissionProvider extends GetConnect {
  Future<Response<List<Permission>>> getAllPermission() =>
      get('$url/permissions');
}
