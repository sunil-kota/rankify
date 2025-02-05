import 'package:flutter/material.dart';
import 'package:rankify/auth/screens/signup.dart';
import 'package:rankify/common/widgets/custom_text_button.dart';
import 'package:rankify/common/widgets/custom_textfield.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool isObscure = true;
  final _signinformKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
        return Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (!isKeyboardVisible) ...[
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "assets/R2.png",
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
              // if(isKeyboardVisible)...[
              //   SizedBox(
              //   height: 40,
              // ),
              // Image.asset(
              //   "assets/R2.png",
              //   width: 100,
              //   height: 100,
              // ),
              // SizedBox(
              //   height: 10,
              // ),

              // ],

              Expanded(
                child: SingleChildScrollView(
                  reverse: true,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 8,
                              offset: Offset(4, 0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Form(
                            key: _signinformKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sign in",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomTextfield(
                                  label: "Email",
                                  hintText: "Enter your email",
                                  controller: emailController,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomTextfield(
                                  hintText: "Enter your password",
                                  label: "Password",
                                  controller: passwordController,
                                  obscureText: isObscure,
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isObscure = !isObscure;
                                        });
                                      },
                                      icon: Icon(isObscure
                                          ? Icons.visibility_off
                                          : Icons.visibility,)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(text: "Sign In", onTap: () {}),
                              SizedBox(
                                height: 10,
                              ),
                              CustomTextButton(
                                  text: "ForgotPassword?",
                                  onTap: () {},
                                  color: Colors.red),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an account"),
                                  CustomTextButton(
                                      text: "Sign Up",
                                      onTap: () {
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Signup()));
                                      },
                                      color: Colors.green)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
