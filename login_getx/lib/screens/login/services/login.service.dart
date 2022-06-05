import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:login_getx/screens/login/models/login_request.model.dart';
import 'package:login_getx/screens/login/models/login_response.model.dart';
import 'package:login_getx/screens/login/models/register_request.model.dart';
import 'package:login_getx/screens/login/models/register_response.model.dart';

class LoginService extends GetConnect {
  final String loginUrl = 'https://reqres.in/api/login';
  final String registerUrl = 'https://reqres.in/api/register';

  Future<LoginResponseModel?> fetchLogin(LoginRequestModel model) async {
    final response = await post(loginUrl, model.toJson());

    if (response.statusCode == HttpStatus.ok) {
      return LoginResponseModel.fromJson(response.body);
    } else {
      return null;
    }
  }

  Future<RegisterResponseModel?> fetchRegister(
      RegisterRequestModel model) async {
    final response = await post(registerUrl, model.toJson());

    if (response.statusCode == HttpStatus.ok) {
      return RegisterResponseModel.fromJson(response.body);
    } else {
      return null;
    }
  }
}
