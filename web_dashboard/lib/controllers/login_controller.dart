import 'package:get/get.dart';
import 'package:web_dashboard/models/token_model.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.find();
  RxBool isLogin = false.obs;
  Rx<Token> token = Token(accessToken: '', refreshToken: '').obs;

  void login({required String email, required String password}) {}
}
