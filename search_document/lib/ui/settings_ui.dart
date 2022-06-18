import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_document/ui/components/segmented_selector.dart';
import 'package:search_document/controllers/controllers.dart';
import 'package:search_document/ui/components/components.dart';
import 'package:search_document/models/models.dart';
import 'package:search_document/constants/constants.dart';

class SettingsUI extends StatelessWidget {
  const SettingsUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings.title'.tr),
      ),
      body: _buildLayoutSection(context),
    );
  }

  Widget _buildLayoutSection(BuildContext context) {
    return ListView(
      children: <Widget>[
        languageListTile(context),
        themeListTile(context),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () => Get.toNamed(AppRoutes.getUpdateProfileRoute()),
          child: Text('settings.updateProfile'.tr),
        ),
        ElevatedButton(
          onPressed: () {
            AuthController.to.signOut();
          },
          child: Text(
            'settings.signOut'.tr,
          ),
        ),
      ],
    );
  }

  languageListTile(BuildContext context) {
    return GetBuilder<LanguageController>(
      builder: (controller) => ListTile(
        title: Text('settings.language'.tr),
        trailing: DropdownPicker(
          menuOptions: Globals.languageOptions,
          selectedOption: controller.currentLanguage,
          onChanged: (value) async {
            await controller.updateLanguage(value!);
            Get.forceAppUpdate();
          },
        ),
      ),
    );
  }

  themeListTile(BuildContext context) {
    final List<MenuOptionsModel> themeOptions = [
      MenuOptionsModel(
          key: 'system', value: 'settings.system'.tr, icon: Icons.brightness_4),
      MenuOptionsModel(
          key: 'light', value: 'settings.light'.tr, icon: Icons.brightness_low),
      MenuOptionsModel(
          key: 'dark', value: 'settings.dark'.tr, icon: Icons.brightness_3)
    ];
    return GetBuilder<ThemeController>(
      builder: (controller) => Container(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'settings.theme'.tr,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
            ),
            ListTile(
              trailing: SegmentedSelector(
                selectedOption: controller.currentTheme,
                menuOptions: themeOptions,
                onValueChanged: (value) {
                  controller.setThemeMode(value);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
