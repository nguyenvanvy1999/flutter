import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndText(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: AppDimension.iconSize24,
        ),
        const SizedBox(width: 5),
        SmallText(text: text)
      ],
    );
  }
}
