import 'package:flutter/material.dart';
import 'package:rankify/auth/screens/Phonenumber.dart';
import 'package:rankify/auth/screens/Sucessful.dart';
import 'package:rankify/auth/screens/examCategory.dart';
import 'package:rankify/auth/screens/language.dart';
import 'package:rankify/auth/screens/signin.dart';
import 'package:rankify/auth/screens/signup.dart';
import 'package:rankify/auth/screens/auth.dart';
import 'package:rankify/constants/global_variables.dart';
import 'package:rankify/splashScreen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
    theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  Phonenumber(),
    );
  }
}

