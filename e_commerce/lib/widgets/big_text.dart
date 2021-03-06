import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      required this.text,
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis,
      this.color = AppColors.mainBlackColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size == 0 ? AppDimension.font20 : size,
          fontWeight: FontWeight.w400),
      overflow: overFlow,
    );
  }
}
