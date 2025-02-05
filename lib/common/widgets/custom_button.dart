import 'package:flutter/material.dart';
import 'package:rankify/constants/global_variables.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text,style: TextStyle(fontSize: 16),),
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
