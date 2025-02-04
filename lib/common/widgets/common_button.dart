import 'package:flutter/material.dart';
import 'package:rankify/constants/global_variables.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CommonButton({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed:onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(250,50),
        backgroundColor: GlobalVariables.buttonColor,
        foregroundColor: GlobalVariables.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    );
  }
}
