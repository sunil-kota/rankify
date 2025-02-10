import 'package:flutter/material.dart';
import 'package:rankify/utils/screen_size.dart';

class Successful extends StatefulWidget {
  @override
  _SuccessfulState createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  String coins = '10';

  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;
    final screen = ScreenSize(context);
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(
              height: screen.Height * 0.1,
            ),
            // Text(
            //   "Welcome!",
            //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            // ),
            Image.asset('assets/R1.png',
                width: screen.Width * 0.5, height: screen.Height * 0.2),
            SizedBox(height: screen.Height * (5 / 812)),
            Image.asset('assets/check.png',
                width: screen.Width * 0.3, height: screen.Height * 0.3),
            SizedBox(height: screen.Height * (5 / 812)),
            Text(
              "You have successfully registered",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screen.Height * (40 / 812)),
            Image.asset(
              'assets/coin.png',
              width: 50,
              height: 50,
            ),
            
            SizedBox(
              height: screen.Height * (5 / 812),
            ),
            Text("Welcome coins $coins", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
