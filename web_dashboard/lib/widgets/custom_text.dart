import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.size,
      required this.color,
      this.weight})
      : super(key: key);

  final Color color;
  final double? size;
  final String text;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
