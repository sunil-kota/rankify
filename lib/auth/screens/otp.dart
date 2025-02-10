import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:rankify/auth/screens/auth.dart';
import 'package:rankify/auth/screens/examCategory.dart';

import 'package:rankify/common/widgets/custom_button.dart';

import 'package:rankify/constants/global_variables.dart';
import 'package:rankify/utils/screen_size.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final String phonenumber = "7702045409";
  final String email = "vikas@gmail.com";
  int _remainingSeconds = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  void _resendOTP() {
    setState(() {
      _remainingSeconds = 60;
    });
    _startTimer();
    // print("Resend OTP triggered");
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;
    final screen = ScreenSize(context);

    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            "Verification",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          scrolledUnderElevation: 0,
        ),
        body: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   "Verification",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              // ),
              // SizedBox(
              //   height: screen.Height * (5 / 812),
              // ),
              if (!isKeyboardVisible) ...[
                Image.asset(
                  "assets/R1.png",
                  width: screen.Width * 0.8,
                  height: screen.Height * 0.3,
                ),
              ],
              if (isKeyboardVisible) ...[
                Image.asset(
                  "assets/R1.png",
                  width: screen.Width * 0.5,
                  height: screen.Height * 0.1,
                ),
              ],
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 8,
                        offset: Offset(4, 0))
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your Verification Code",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Please enter the otp code just sent to ",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "+91 ******${phonenumber.substring(phonenumber.length - 4)}",
                        style: TextStyle(
                            fontSize: 16, color: GlobalVariables.buttonColor),
                      ),
                      // SizedBox(height: 5),
                      // Text(
                      //   phonenumber,
                      //   style: TextStyle(
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      SizedBox(height: 15),
                      _buildOTPFields(screen.Width),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomButton(
                              text: "Submit",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Examcategory()));
                              },
                              color: GlobalVariables.buttonColor,
                              textColor: GlobalVariables.textWhite),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Didn't receive the OTP? ",
                                style: TextStyle(fontSize: 14),
                              ),
                              GestureDetector(
                                onTap: _resendOTP,
                                child: Text(
                                  _remainingSeconds > 0
                                      ? "Resend in $_remainingSeconds seconds"
                                      : "Resend now",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // CustomTextButton(
                          //   text: "Change Phone number",
                          //   onTap: () {},
                          //   color: GlobalVariables.buttonColor,
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              ))
            ],
          );
        }));
  }

  Widget _buildOTPFields(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: screenWidth * (80 / 812),
          height: 60,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            decoration: InputDecoration(
              hintText: "",
              border: UnderlineInputBorder(
                  // borderRadius: BorderRadius.circular(8),
                  ),
            ),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        );
      }),
    );
  }
}
