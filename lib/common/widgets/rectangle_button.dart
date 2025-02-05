import 'package:flutter/material.dart';
import 'package:rankify/constants/global_variables.dart';

class RectangleButton extends StatefulWidget {
  final String text;

  const RectangleButton({
    super.key,
    required this.text,
  });

  @override
  State<RectangleButton> createState() => _RectangleButtonState();
}

class _RectangleButtonState extends State<RectangleButton> {
  Color textColor = GlobalVariables.textBlack;
  Color buttonColor = GlobalVariables.inactivebuttonColor;
  void changeColor() {
    setState(() {
      textColor = GlobalVariables.textWhite;
      buttonColor = GlobalVariables.buttonColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: changeColor,
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: textColor,
          minimumSize: Size(250, 50),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(0),
          )),
    );
  }
}
