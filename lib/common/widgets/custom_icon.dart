import 'package:flutter/material.dart';
import 'package:rankify/constants/global_variables.dart';

class CustomIcon extends StatelessWidget {
  final String imagePath;
  const CustomIcon({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
       imagePath,
        width: 35,
        height: 35,
        color: GlobalVariables.buttonColor,
      ),
    );
  }
}
