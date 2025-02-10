import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:rankify/auth/screens/emailsignup.dart';
import 'package:rankify/auth/screens/otp.dart';
// import 'package:rankify/auth/screens/signin.dart';
import 'package:rankify/common/widgets/custom_button.dart';
// import 'package:rankify/common/widgets/custom_icon.dart';
import 'package:rankify/common/widgets/custom_text_button.dart';
import 'package:rankify/common/widgets/custom_textfield.dart';
import 'package:rankify/constants/global_variables.dart';
import 'package:rankify/utils/screen_size.dart';

class Phonenumber extends StatelessWidget {
  const Phonenumber({super.key});

  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;
    final screen = ScreenSize(context);
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true, // Ensures input field moves up
      body: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // if (!isKeyboardVisible) ...[
            SizedBox(
              height: screen.Height * 0.4,
              width: screen.Width * 0.8,
              child: AnotherCarousel(
                images: const [
                  Image(
                      image: AssetImage("assets/R1.png"), fit: BoxFit.contain),
                  Image(
                      image: AssetImage("assets/R1.png"), fit: BoxFit.contain),
                  Image(
                      image: AssetImage("assets/R1.png"), fit: BoxFit.contain),
                ],
                dotSize: 4,
                dotIncreasedColor: GlobalVariables.buttonColor,
                dotColor: Colors.grey,
                indicatorBgPadding: 2,
                dotBgColor: Colors.white,
                // showIndicator: false,
                dotPosition: DotPosition.bottomCenter,
              ),
            ),
            // ],
            // if (isKeyboardVisible) ...[
            //   Image.asset(
            //     "assets/R1.png",
            //     width: screen.Width * 0.5,
            //     height: screen.Height * 0.2,
            //   )
            // ],
            Expanded(
              child: Container(
                // height: screenHeight * 0.5,
                padding: EdgeInsets.all(16),
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
                      offset: Offset(4, 0),
                    )
                  ],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Form(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enter Your Mobile Number",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: screen.Height * (10 / 812),
                            ),
                            Text("Please enter your mobile number"),
                            SizedBox(
                              height: screen.Height * (25 / 812),
                            ),
                            CustomTextfield(
                                hintText: "Enter your 10 digit Mobile Number",
                                label: "Mobile Number",
                                controller: phoneController)
                          ],
                        )),
                        SizedBox(
                          height: screen.Height * (20 / 812),
                        ),
                        CustomButton(
                            text: "Continue",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OTP()));
                            },
                            color: GlobalVariables.buttonColor,
                            textColor: GlobalVariables.textWhite),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //     Expanded(
                            //       child: Divider(
                            //         color: GlobalVariables.textBlack,
                            //         thickness: 1,
                            //         endIndent: 10,
                            //       ),
                            //     ),
                            Text(
                              "Or",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                    GlobalVariables.textBlack.withOpacity(0.4),
                              ),
                            ),
                            // Expanded(
                            //   child: Divider(
                            //     color: GlobalVariables.textBlack,
                            //     thickness: 1,
                            //     indent: 10,
                            //     endIndent: 10,
                            //   ),
                            // )
                          ],
                        ),
                        // SizedBox(
                        //   height: 25,
                        // ),
                        // Text(
                        //   "Login With",
                        //   style: TextStyle(
                        //       fontSize: 16, fontWeight: FontWeight.w300),
                        // ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Emailsignup(),
                              ),
                            )
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            width: screen.Width * 0.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // CircleAvatar(
                                //   backgroundColor: Colors.white,
                                //   foregroundImage: AssetImage("icons/google.png"),

                                // ),
                                Image.asset(
                                  "icons/google.png",
                                  width: screen.Width * (50 / 812),
                                  height: screen.Height * (50 / 812),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Continue with google",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("By continuing you accept our"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextButton(
                                    text: "Terms of Service",
                                    onTap: () {},
                                    color: GlobalVariables.buttonColor),
                                Text("and"),
                                CustomTextButton(
                                    text: "Privacy Policy",
                                    onTap: () {},
                                    color: GlobalVariables.buttonColor)
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
