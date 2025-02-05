import 'package:flutter/material.dart';
import 'package:rankify/common/widgets/rectangle_button.dart';
import 'package:rankify/constants/global_variables.dart';

class Examcategory extends StatefulWidget {
  const Examcategory({super.key});

  @override
  State<Examcategory> createState() => _ExamcategoryState();
}

class _ExamcategoryState extends State<Examcategory> {
  

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
                          
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RectangleButton(
                          text: "SI & PC",
                          
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RectangleButton(
                          text: "DSC",
                         
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RectangleButton(
                          text: "SSC",
                         
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RectangleButton(
                          text: "Banks",
                         
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RectangleButton(
                          text: "RRB",
                         
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RectangleButton(
                          text: "Other",
                         
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Note:"),SizedBox(width: 5,),
                            Expanded(child: Text("You can add additional exam or deselect current exam preparation."
                            "These changes can be done by going to the menu section in the home page and add your changes.",
                            softWrap: true,))
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
