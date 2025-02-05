import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final String text;
  final bool isChecked;
  final VoidCallback onTap;
  const CustomCheckbox(
      {super.key, required this.isChecked, required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title:
          Text(text,style: TextStyle(fontSize: 15),),
      value: isChecked,
      onChanged: (bool? value) => {onTap()},
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
