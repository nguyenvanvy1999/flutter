import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/icon_and_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      BigText(
        text: text,
        size: AppDimension.font26,
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          Wrap(
            children: List.generate(
                5,
                (index) => const Icon(
                      Icons.star,
                      color: AppColors.mainColor,
                      size: 15,
                    )),
          ),
          SizedBox(width: AppDimension.height10),
          SmallText(text: '4.5'),
          SizedBox(width: AppDimension.height10),
          SmallText(text: '1287'),
          SmallText(text: ' comments')
        ],
      ),
      SizedBox(height: AppDimension.height20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          IconAndText(
            icon: Icons.circle_sharp,
            text: 'Normal',
            iconColor: AppColors.iconColor1,
          ),
          IconAndText(
            icon: Icons.location_on,
            text: '1.7 km',
            iconColor: AppColors.mainColor,
          ),
          IconAndText(
            icon: Icons.access_time_rounded,
            text: '32 min',
            iconColor: AppColors.iconColor2,
          )
        ],
      )
    ]);
  }
}
