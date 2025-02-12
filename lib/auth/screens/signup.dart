// import 'package:flutter/material.dart';
// import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
// import 'package:rankify/auth/screens/examcategory.dart';
// import 'package:rankify/common/widgets/custom_button.dart';
// import 'package:rankify/common/widgets/custom_checkbox.dart';
// import 'package:rankify/common/widgets/custom_textfield.dart';
// import 'package:rankify/constants/global_variables.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   final _signupformKey = GlobalKey<FormState>();
//   bool isObscure = true;
//   bool isChecked = false;
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // if (!isKeyboardVisible) ...[
//               SizedBox(
//                 height: 40,
//               ),
//               Image.asset(
//                 "assets/R1.png",
//                 width: screenWidth*0.5,
//                 height: screenHeight*0.2,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//             // ],
//             Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                       color: GlobalVariables.backgroundColor,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40),
//                           topRight: Radius.circular(40)),
//                       boxShadow: [
//                         BoxShadow(
//                             blurRadius: 8,
//                             color: Colors.black38,
//                             offset: Offset(4, 0))
//                       ]),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           Form(
//                               key: _signupformKey,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Create Account",
//                                       style: TextStyle(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.bold)),
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   CustomTextfield(
//                                       hintText: "Enter your name",
//                                       label: "Name",
//                                       controller: nameController),
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   CustomTextfield(
//                                       hintText: "Enter your email",
//                                       label: "Email",
//                                       controller: emailController),
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   CustomTextfield(
//                                     hintText: "Enter your password",
//                                     label: "Password",
//                                     controller: passwordController,
//                                     suffixIcon: IconButton(
//                                         onPressed: () {
//                                           setState(() {
//                                             isObscure = !isObscure;
//                                           });
//                                         },
//                                         icon: Icon(
//                                           !isObscure
//                                               ? Icons.visibility_off
//                                               : Icons.visibility,
//                                           size: 20,
//                                         )),
//                                   ),
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   CustomTextfield(
//                                     hintText: "Re-enter your password",
//                                     label: "Confirm Password",
//                                     controller: confirmPasswordController,
//                                     suffixIcon: IconButton(
//                                         onPressed: () {
//                                           setState(() {
//                                             isObscure = !isObscure;
//                                           });
//                                         },
//                                         icon: Icon(isObscure
//                                             ? Icons.visibility_off
//                                             : Icons.visibility)),
//                                   ),
//                                   SizedBox(
//                                     height: 20,
//                                   ),
//                                   CustomCheckbox(
//                                       isChecked: isChecked,
//                                       onTap: () {
//                                         setState(() {
//                                           isChecked = !isChecked;
//                                         });
//                                       },
//                                       text:
//                                           "By creating an account you agree with our Terms & Conditions"),
//                                           SizedBox(height: 20,)
//                                 ],
//                               )),
//                           Column(
//                             children: [
//                               CustomButton(text: "Sign Up", onTap: () => {
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Examcategory()))
//                               },color: GlobalVariables.buttonColor,textColor: GlobalVariables.backgroundColor,)
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ))
//           ],
//         );
//       }),
//     );
//   }
// }
