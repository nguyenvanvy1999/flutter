import 'package:flutter/material.dart';

class PermissionEditPage extends StatelessWidget {
  const PermissionEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('MyPage')),
        body: const SafeArea(child: Text('MyController')));
  }
}
