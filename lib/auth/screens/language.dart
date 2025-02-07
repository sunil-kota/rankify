import 'package:flutter/material.dart';
import 'package:rankify/auth/screens/Sucessful.dart';
import 'package:rankify/common/widgets/rectangle_button.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: EdgeInsets.only(top: 40),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/R2.png",width: 50,height: 30,),
                SizedBox(width: 90,),
                Text("Rankify",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 30,),
            Text(
                "Select your Language",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20,),
              Expanded(child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RectangleButton(text: "English",onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Successful()))
                      },),
                      SizedBox(height: 10,),
                      RectangleButton(text: "Hindi",onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Successful()))
                      },),
                      SizedBox(height: 10,),
                      RectangleButton(text: "Telugu",onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Successful()))
                      },),
                      SizedBox(height: 10,),
                      RectangleButton(text: "Marathi",onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Successful()))
                      },),
                      SizedBox(height: 10,),
                      RectangleButton(text: "Tamil",onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Successful()))
                      },),
                      SizedBox(height: 10,),
                      RectangleButton(text: "Kannada",onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Successful()))
                      },),
                      SizedBox(height: 10,),

                    
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Note:"),SizedBox(width: 5,),
                          Expanded(child: Text("You can change the mode of language via menu bar in home page in future.",
                          softWrap: true,))
                        ],
                      )
                    ],
                  ),
                ),
              ))
          ],
          
        ),
      ),),
    );
  }
}