import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/dimension.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHaft;
  late String secondHaft;
  bool hiddenText = true;
  double textHeight = AppDimension.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > textHeight) {
      firstHaft = widget.text.substring(0, textHeight.toInt());
      secondHaft =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHaft = widget.text;
      secondHaft = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHaft.isEmpty
          ? SmallText(
              text: firstHaft,
              size: AppDimension.font16,
              color: AppColors.paraColor,
            )
          : Column(
              children: [
                SmallText(
                  text: hiddenText
                      ? (firstHaft + '...')
                      : (firstHaft + secondHaft),
                  size: AppDimension.font16,
                  color: AppColors.paraColor,
                  height: 1.8,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: 'Show more',
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
