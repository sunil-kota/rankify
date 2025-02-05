import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const CustomTextButton({super.key, required this.text,required this.onTap,required this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onTap,
      child: Text(text,
      style: TextStyle(
        color: color,
        decoration: TextDecoration.underline,
        decorationColor: color,
        decorationThickness: 2
      ),),
      
        
      
    );
  }
}
