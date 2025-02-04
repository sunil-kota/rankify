import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const CommonTextButton({super.key, required this.text,required this.onTap,required this.color});

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
