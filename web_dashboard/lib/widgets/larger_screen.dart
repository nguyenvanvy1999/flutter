import 'package:flutter/material.dart';
import 'package:web_dashboard/widgets/side_menu.dart';

class LargerScreen extends StatelessWidget {
  const LargerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ))
      ],
    );
  }
}
