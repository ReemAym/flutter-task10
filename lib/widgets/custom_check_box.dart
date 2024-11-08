import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final bool? checkedBoxState;
  final void Function(bool?) onChanged;
  const CustomCheckBox(
      {super.key, this.checkedBoxState, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkedBoxState,
      activeColor: Colors.blue[700],
      onChanged: onChanged,
    );
  }
}
