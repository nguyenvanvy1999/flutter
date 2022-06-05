import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_getx/controllers/auth.controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final AuthenticationManager _authManager = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                _authManager.logOut();
              },
              icon: const Icon(Icons.logout_rounded))
        ],
      ),
      body: const Center(
        child: const Text('HOME VIEW'),
      ),
    );
  }
}
