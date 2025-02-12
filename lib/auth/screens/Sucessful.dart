import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rankify/utils/screen_size.dart';

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
    // final screen = ScreenSize(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.only(top: 40.r),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: screen.Height * 0.1,
            // ),
            // Text(
            //   "Welcome!",
            //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            // ),
            Image.asset(
              'assets/R1.png',
              // width: screen.Width * 0.5, height: screen.Height * 0.2
              height: 300.h,
              width: 300.w,
            ),
            // SizedBox(
            //   // height: screen.Height * (5 / 812),
            //   height: 25.h,
            // ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(16.r),
              margin: EdgeInsets.only(top: 30.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black12,
                //     blurRadius: 2,
                //     offset: Offset(4, 0),
                //   )
                // ],
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
      
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/check.png',
                          // width: screen.Width * 0.3, height: screen.Height * 0.3
                          height: 94.h,
                          width: 94.w,
                        ),
                        SizedBox(
                           // height: screen.Height * (5 / 812),
                          height: 25.h,
                        ),
                        Text(
                          "You have successfully registered",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                         // height: screen.Height * (5 / 812),
                          height: 40.h,
                        ),
                        Column(children: [
                          Image.asset(
                            'assets/coin.png',
                            // width: 50,
                            // height: 50,
                            width: 39.w,
                            height: 39.h,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text("Welcome coins $coins",
                              style: TextStyle(fontSize: 16.sp)),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            )),
        
            // SizedBox(
            //   // height: screen.Height * (5 / 812),
            //   height: 25.h,
            // ),
          ],
        ),
      ),
    );
  }
}
