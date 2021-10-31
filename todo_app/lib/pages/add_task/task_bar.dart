import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTaskAppBar extends StatelessWidget with PreferredSizeWidget {
  const AddTaskAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: Icon(
          Icons.arrow_back_ios,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      actions: const [
        CircleAvatar(
          backgroundImage: AssetImage('assets/icons/profile.png'),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
