import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:rankify/auth/screens/signin.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/common/widgets/custom_icon.dart';
import 'package:rankify/common/widgets/custom_text_button.dart';
import 'package:rankify/common/widgets/custom_textfield.dart';
import 'package:rankify/constants/global_variables.dart';

class Phonenumber extends StatelessWidget {
  const Phonenumber({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true, // Ensures input field moves up
      body: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
        return Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              if(!isKeyboardVisible)...[
                 Image.asset(
                "assets/R2.png",
                width: 250,
                height: 250,
              ),
              ],
              if(isKeyboardVisible)...[
                 Image.asset(
                "assets/R2.png",
                width: 100,
                height: 100,
              ),
              ],

              
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                    reverse: true,
                    child: Container(
                      padding: EdgeInsets.all(16),
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
                          ]),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "Please confirm your country code and enter your mobile number"),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomTextfield(
                                    hintText: "+91",
                                    label: "Mobile Number",
                                    controller: phoneController)
                              ],
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("By continuing you aceept our"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomTextButton(
                                        text: "Terms of Use",
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
                                CustomButton(
                                    text: "Continue",
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Signin()));
                                    },
                                    color: GlobalVariables.buttonColor,
                                    textColor: GlobalVariables.textWhite),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIcon(
                                      imagePath: "icons/apple.png",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                     CustomIcon(
                                      imagePath: "icons/social.png",
                                     ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                     CustomIcon(
                                      imagePath: "icons/facebook.png",
                                     ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildTop(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;

    return Container(
      width: mediaSize.width,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/R2.png',
            width: 191,
            height: 224,
          ),
        ],
      ),
    );
  }

  Widget _buildBottom(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;

    return Material(
      elevation: 4, // Small elevation for shadow effect
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: Container(
        width: mediaSize.width,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              spreadRadius: 1,
              offset: Offset(0, -2), // Moves shadow slightly upwards
            ),
          ],
        ),
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
        children: [
          const Text(
            "Enter your mobile number",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Please confirm your country code before you enter your mobile number",
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 20),
          const Text(
            "Include Country code",
            style: TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 20),
          _buildInputField(),
          const SizedBox(height: 20),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     CustomButton(
          //         text: "Continue",
          //         onTap: () {
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (context) => Signin()));
          //         }),
          //   ],
          // )
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return TextField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Mobile Number",
      ),
      keyboardType: TextInputType.phone,
    );
  }
}
