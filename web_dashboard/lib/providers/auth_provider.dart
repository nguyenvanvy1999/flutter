import 'package:get/get.dart';
import 'package:web_dashboard/constants/backend.dart';

class AuthenticationProvider extends GetConnect {
  Future<Response> login(Map data) => post('$url/users/login', data);
}
