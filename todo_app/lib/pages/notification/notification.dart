import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatelessWidget {
  final String payload;
  const NotificationPage({
    Key? key,
    required this.payload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.grey[600] : Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
          color: Get.isDarkMode ? Colors.white : Colors.grey,
        ),
        title: Text(
          payload.split('|')[0],
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: 400,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Get.isDarkMode ? Colors.white : Colors.grey[400]),
        child: Text(payload.split('|')[1],
            style: TextStyle(
                color: Get.isDarkMode ? Colors.black : Colors.white,
                fontSize: 30)),
      ),
    );
  }
}
