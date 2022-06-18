import 'package:flutter/material.dart';
/*
DropdownPicker(
                menuOptions: list of dropdown options in key value pairs,
                selectedOption: menu option string value,
                onChanged: (value) => print('changed'),
              ),
*/

class DropdownPicker extends StatelessWidget {
  const DropdownPicker(
      {Key? key,
      required this.menuOptions,
      required this.selectedOption,
      required this.onChanged})
      : super(key: key);

  final List<dynamic> menuOptions;
  final void Function(String?) onChanged;
  final String selectedOption;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        items: menuOptions
            .map((data) => DropdownMenuItem<String>(
                  value: data.key,
                  child: Text(
                    data.value,
                  ),
                ))
            .toList(),
        value: selectedOption,
        onChanged: onChanged);
  }
}
