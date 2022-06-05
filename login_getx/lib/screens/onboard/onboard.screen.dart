import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx/controllers/auth.controller.dart';
import 'package:login_getx/screens/home/home.screen.dart';
import 'package:login_getx/screens/login/login.screen.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationManager authManager = Get.find();

    return Obx(() {
      return authManager.isLogged.value ? const HomeView() : const LoginView();
    });
  }
}
