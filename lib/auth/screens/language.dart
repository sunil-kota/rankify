import 'package:flutter/material.dart';
import 'package:rankify/auth/screens/Sucessful.dart';
import 'package:rankify/common/widgets/rectangle_button.dart';
import 'package:rankify/constants/global_variables.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
              children: [
                // Image.asset(
                //   "assets/R1.png",
                //   width: screenWidth * 0.5,
                //   height: screenHeight * 0.2,
                // ),
                // SizedBox(width: 90,),
                // Text("Rankify",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              "Select your Language",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RectangleButton(
                      text: "English",
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Successful()))
                      },
                    ),
                    SizedBox(
                      height: screenHeight * (10 / 812),
                    ),
                    RectangleButton(
                      text: "Hindi",
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Successful()))
                      },
                    ),
                    SizedBox(
                      height: screenHeight * (10 / 812),
                    ),
                    RectangleButton(
                      text: "Telugu",
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Successful()))
                      },
                    ),
                    SizedBox(
                      height: screenHeight * (10 / 812),
                    ),
                    RectangleButton(
                      text: "Marathi",
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Successful()))
                      },
                    ),
                    SizedBox(
                      height: screenHeight * (10 / 812),
                    ),
                    RectangleButton(
                      text: "Tamil",
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Successful()))
                      },
                    ),
                    SizedBox(
                      height: screenHeight * (10 / 812),
                    ),
                    RectangleButton(
                      text: "Kannada",
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Successful()))
                      },
                    ),
                    SizedBox(
                      height: screenHeight * (20 / 812),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Note:",
                          style: TextStyle(
                              color: GlobalVariables.buttonColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: screenWidth * (8 / 812),
                        ),
                        Expanded(
                            child: Text(
                          "You can change the mode of language via menu bar in home page in future.",
                          softWrap: true,
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
