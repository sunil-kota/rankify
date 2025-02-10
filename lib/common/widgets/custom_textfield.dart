import 'package:flutter/material.dart';
// import 'package:rankify/constants/global_variables.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  // final TextInputType keyboardType;
  // final String? Function(String?)? validator;
  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        TextFormField(
          controller: controller,
          keyboardType:TextInputType.phone,
          // obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: Color.fromRGBO(202, 23, 77, 1), width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
              ),
              suffixIcon: suffixIcon,
              ),
        )
      ],
    );
  }
}
