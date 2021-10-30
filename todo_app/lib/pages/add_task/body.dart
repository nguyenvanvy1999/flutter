import 'package:flutter/material.dart';
import 'package:todo_app/constants/text_style.dart';
import 'package:todo_app/widgets/input_field.dart';

class AddTaskBody extends StatelessWidget {
  const AddTaskBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add task',
              style: headingStyle,
            ),
            const MyInputField(title: 'title', hint: 'hint')
          ],
        ),
      ),
    );
  }
}
