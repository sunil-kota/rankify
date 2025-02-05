import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  // final TextEditingController controller;
  final String hintText;
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  // final TextInputType keyboardType;
  // final String? Function(String?)? validator;
  const CustomTextfield({super.key, 
  required this.hintText,
  required this.label,
  required this.controller,
  this.obscureText=false,
  this.suffixIcon,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        TextFormField(
          controller: controller,
          // obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            border: UnderlineInputBorder(),
            suffixIcon: suffixIcon

          ),
        )
      ],
      
    );
  }
}
