import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  static AuthenticationController instance = Get.find();
  RxBool isObscure = true.obs;

  void changeObscureStatus(bool obscure) {
    isObscure.value = obscure;
  }

  void login() {}
}
