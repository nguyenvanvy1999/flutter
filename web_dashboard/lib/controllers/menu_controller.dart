import 'package:flutter/material.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overviewPageDisplayName.obs;

  var hoverItem = ''.obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewPageDisplayName:
        return customIcon(Icons.trending_up, itemName);
      case driversPageDisplayName:
        return customIcon(Icons.drive_eta, itemName);
      case clientsPageDisplayName:
        return customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageDisplayName:
        return customIcon(Icons.exit_to_app, itemName);
      case permissionsPageDisplayName:
        return customIcon(Icons.security_outlined, itemName);
      case rolesPageDisplayName:
        return customIcon(Icons.perm_identity, itemName);
      case usersPageDisplayName:
        return customIcon(Icons.people_alt_outlined, itemName);
      default:
        return customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
