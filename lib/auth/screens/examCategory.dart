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
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/R2.png",
                    width: 50,
                    height: 30,
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    "Rankify",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Select your Competitive Exam category",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
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
                          height: 10,
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
                          height: 10,
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
                          height: 10,
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
                          height: 10,
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
                          height: 10,
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
                          height: 10,
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
                          height: 10,
                        ),

                       
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Note:"),
                            SizedBox(
                              width: 5,
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
      ),
    );
  }
}
