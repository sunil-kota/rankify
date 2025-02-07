import 'package:flutter/material.dart';
import 'package:rankify/constants/global_variables.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.color,required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 16,color: textColor),
        ),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(250, 50),
            backgroundColor: color,
            foregroundColor: GlobalVariables.backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: GlobalVariables.textBlack)
                )
                )
                );
  }
}
