import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rankify/auth/screens/emailsignup.dart';
import 'package:rankify/auth/screens/otp.dart';
import 'package:rankify/auth/services/authservice.dart';
// import 'package:rankify/auth/screens/signin.dart';
import 'package:rankify/common/widgets/custom_button.dart';
// import 'package:rankify/common/widgets/custom_icon.dart';
import 'package:rankify/common/widgets/custom_text_button.dart';
import 'package:rankify/common/widgets/custom_textfield.dart';
import 'package:rankify/constants/global_variables.dart';
// import 'package:rankify/utils/screen_size.dart';
// import 'package:rankify/auth/services/authservice.dart';

class Phonenumber extends StatelessWidget {
  const Phonenumber({super.key});

  @override
  Widget build(BuildContext context) {
    // final screen = ScreenSize(context);
    final _phoneSignUpFormKey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
        return Padding(
          padding: EdgeInsets.only(top: 40.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // if (!isKeyboardVisible) ...[
              SizedBox(
                // height: screen.Height * 0.4,
                // width: screen.Width * 0.8,
                height: 250.h,
                width: 300.w,
                child: AnotherCarousel(
                  images: const [
                    Image(
                        image: AssetImage("assets/R1.png"),
                        fit: BoxFit.contain),
                    Image(
                        image: AssetImage("assets/R1.png"),
                        fit: BoxFit.contain),
                    Image(
                        image: AssetImage("assets/R1.png"),
                        fit: BoxFit.contain),
                  ],
                  dotSize: 4,
                  dotIncreasedColor: GlobalVariables.buttonColor,
                  dotColor: Colors.grey,
                  indicatorBgPadding: 2.r,
                  dotBgColor: GlobalVariables.backgroundColor,
                  // showIndicator: false,
                  dotPosition: DotPosition.bottomCenter,
                ),
              ),
              // ],
              // if (isKeyboardVisible) ...[
              //   Image.asset(
              //     "assets/R1.png",
              //     // width: screen.Width * 0.5,
              //     // height: screen.Height * 0.2,
              //     width: 300.w,
              //     height: 100.h,
              //   )
              // ],
              Expanded(
                child: Container(
                  // height: screenHeight * 0.5,
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
                      child: Column(
                        children: [
                          Form(
                              key: _phoneSignUpFormKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Enter Your Mobile Number",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    // height: screen.Height * (10 / 812),
                                    height: 10.h,
                                  ),
                                  Text("Please enter your mobile number"),
                                  SizedBox(
                                    // height: screen.Height * (25 / 812),
                                    height: 25.h,
                                  ),
                                  CustomTextfield(
                                      hintText:
                                          "Enter your 10 digit Mobile Number",
                                      // label: "Mobile Number",
                                      controller: phoneController,
                                      keyboardType: TextInputType.phone,)
                                ],
                              )),
                          SizedBox(
                            // height: screen.Height * (20 / 812),
                            height: 25.h,
                          ),
                          CustomButton(
                              text: "Continue",
                              onTap: () => {
                                    if (_phoneSignUpFormKey.currentState!
                                        .validate())
                                      {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => OTP(
                                                      phonenumber:
                                                          phoneController.text,
                                                    )))
                                      }
                                  },
                              color: GlobalVariables.buttonColor,
                              textColor: GlobalVariables.textWhite),
                          SizedBox(
                            // height: 15,
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                  Expanded(
                                    child: Divider(
                                      color: GlobalVariables.textBlack,
                                      thickness: 1,
                                      endIndent: 10,
                                    ),
                                  ),
                              Text(
                                "OR",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: GlobalVariables.textBlack
                                      .withOpacity(0.4),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: GlobalVariables.textBlack,
                                  thickness: 1,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                              )
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
                            // height: 15,
                            height: 15.h,
                          ),
                          InkWell(
                            onTap: () async {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Emailsignup(),
                              //   ),
                              // )
                              UserCredential? userCredential =
                                  await Authservice.signInWithGoogle();
                              if (userCredential != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OTP(
                                            email:
                                                userCredential.user?.email)));
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(8.r),
                              // width: screen.Width * 0.8,
                              width: double.infinity,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
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
                                    // width: screen.Width * (50 / 812),
                                    // height: screen.Height * (50 / 812),
                                    width: 50.w,
                                    height: 20.h,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Continue with google",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "By continuing you accept our",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomTextButton(
                                      text: "Terms of Service",
                                      onTap: () {},
                                      color: GlobalVariables.buttonColor),
                                  Text("and",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey)),
                                  CustomTextButton(
                                      text: "Privacy Policy",
                                      onTap: () {},
                                      color: GlobalVariables.buttonColor)
                                ],
                              ),
                              // SizedBox(
                              //   height: 20.h,
                              // ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
