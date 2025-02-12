import 'package:flutter/material.dart';
import 'package:rankify/constants/global_variables.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  final Color? borderColor;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.color,
      required this.textColor,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50.h),
        backgroundColor: color,
        foregroundColor: GlobalVariables.backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
            side: borderColor != null
                ? BorderSide(color: GlobalVariables.textBlack)
                : BorderSide.none),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.sp, color: textColor),
      ),
    );
  }
}
