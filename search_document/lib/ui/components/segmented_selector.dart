import 'package:flutter/cupertino.dart';
//import 'package:search_document/ui/components/sliding_segmented_control.dart';
/*
SegmentedSelector(
                menuOptions: list of dropdown options in key value pairs,
                selectedOption: menu option string value,
                onChanged: (value) => print('changed'),
              ),
*/

class SegmentedSelector extends StatelessWidget {
  const SegmentedSelector(
      {Key? key,
      required this.menuOptions,
      required this.selectedOption,
      required this.onValueChanged})
      : super(key: key);

  final List<dynamic> menuOptions;
  final void Function(dynamic) onValueChanged;
  final String selectedOption;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl(
        groupValue: selectedOption,
        children: {
          for (var option in menuOptions)
            option.key: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(option.icon),
                const SizedBox(width: 6),
                Text(option.value),
              ],
            )
        },
        onValueChanged: onValueChanged);
  }
}
