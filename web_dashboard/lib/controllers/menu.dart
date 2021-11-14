import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashboard/constants/colors.dart';
import 'package:web_dashboard/constants/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overViewPageRoute.obs;
  var hoverItem = ''.obs;

  changeActiveItemTo(String itemName) => activeItem.value = itemName;

  bool isHovering(String itemName) => hoverItem.value == itemName;

  bool isActive(String itemName) => activeItem.value == itemName;

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overViewPageRoute:
        return customIcon(Icons.trending_up, itemName);
      case driversPageRoute:
        return customIcon(Icons.drive_eta, itemName);
      case clientsPageRoute:
        return customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageRoute:
        return customIcon(Icons.exit_to_app, itemName);
      default:
        return customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }
    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey);
  }
}
