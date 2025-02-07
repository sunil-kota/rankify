import 'package:flutter/material.dart';

class Successful extends StatefulWidget {
  @override
  _SuccessfulState createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  String coins = '10';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              SizedBox(height: 80,),
              Image.asset('assets/R2.png', width: 160, height: 210),
              SizedBox(height: 30),
              Image.asset('assets/check.png',
                  width: 159, height: 200),
              SizedBox(height: 5),
              Text(
                "You have successfully registered",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Image.asset('assets/coin.png',
                  width: 50, height: 50),
              SizedBox(height: 5),
              Text("Welcome coins $coins", style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
