import 'package:flutter/material.dart';
import 'package:rankify/auth/screens/language.dart';
import 'package:rankify/common/widgets/rectangle_button.dart';
import 'package:rankify/constants/global_variables.dart';

class Examcategory extends StatefulWidget {
  const Examcategory({super.key});

  @override
  State<Examcategory> createState() => _ExamcategoryState();
}

class _ExamcategoryState extends State<Examcategory> {
  Color textColor = GlobalVariables.textBlack;
  Color buttonColor = GlobalVariables.backgroundColor;

  void changeColor() {
    setState(() {
      textColor = GlobalVariables.textWhite;
      buttonColor = GlobalVariables.buttonColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/R1.png",
          height: 30,
          width: 60,
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image.asset(
                //   'assets/R1.png', // Replace with actual logo asset
                //   width: screenWidth*0.5,
                //   height: screenHeight*0.2,
                //   // fit: BoxFit.contain,
                // ),
                // const SizedBox(width: 60), // Space between images
                // Image.asset(
                //   'assets/R3.png', // Replace with actual "RANKIFY" logo image
                //   width: 200,
                //   height: 40,
                //   fit: BoxFit.contain,
                // ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              "Select your Competitive Exam category",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenHeight * (20 / 812),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RectangleButton(
                          text: "Groups",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()));
                          }),
                      SizedBox(
                        height: screenHeight * (10 / 812),
                      ),
                      RectangleButton(
                          text: "SI & PC",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()));
                          }),
                      SizedBox(
                        height: screenHeight * (10 / 812),
                      ),
                      RectangleButton(
                          text: "DSC",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()));
                          }),
                      SizedBox(
                        height: screenHeight * (10 / 812),
                      ),
                      RectangleButton(
                          text: "SSC",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()));
                          }),
                      SizedBox(
                        height: screenHeight * (10 / 812),
                      ),
                      RectangleButton(
                          text: "Banks",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()));
                          }),
                      SizedBox(
                        height: screenHeight * (10 / 812),
                      ),
                      RectangleButton(
                          text: "RRB",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()));
                          }),
                      SizedBox(
                        height: screenHeight * (10 / 812),
                      ),
                      RectangleButton(
                          text: "Other",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language()));
                          }),
                      SizedBox(
                        height: screenHeight * (20 / 812),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Note:",
                            style:
                                TextStyle(color: GlobalVariables.buttonColor,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: screenWidth * (8 / 812),
                          ),
                          Expanded(
                              child: Text(
                            "You can add additional exam or deselect current exam preparation."
                            "These changes can be done by going to the menu section in the home page and add your changes.",
                            softWrap: true,
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
