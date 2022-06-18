import 'package:flutter/material.dart';
import 'package:search_document/controllers/controllers.dart';
import 'package:search_document/ui/components/components.dart';
import 'package:search_document/ui/ui.dart';
import 'package:get/get.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (controller) => controller.firestoreUser.value!.uid == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text('home.title'.tr),
                actions: [
                  IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        Get.to(SettingsUI());
                      }),
                ],
              ),
              body: Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 120),
                    Avatar(controller.firestoreUser.value!),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const FormVerticalSpace(),
                        Text(
                            '${'home.uidLabel'.tr}: ${controller.firestoreUser.value!.uid}',
                            style: const TextStyle(fontSize: 16)),
                        const FormVerticalSpace(),
                        Text(
                            '${'home.nameLabel'.tr}: ${controller.firestoreUser.value!.name}',
                            style: const TextStyle(fontSize: 16)),
                        const FormVerticalSpace(),
                        Text(
                            '${'home.emailLabel'.tr}: ${controller.firestoreUser.value!.email}',
                            style: const TextStyle(fontSize: 16)),
                        const FormVerticalSpace(),
                        Text(
                            '${'home.adminUserLabel'.tr}: ${controller.admin.value}',
                            style: const TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
