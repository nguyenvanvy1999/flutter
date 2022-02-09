import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText(
      {Key? key,
      required this.text,
      this.size = 12,
      this.height = 1.2,
      this.color = AppColors.mainColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Roboto', color: color, fontSize: size, height: height),
    );
  }
}
