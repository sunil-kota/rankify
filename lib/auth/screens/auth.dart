import 'package:flutter/material.dart';
import 'package:rankify/auth/screens/signin.dart';
import 'package:rankify/auth/screens/signup.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/global_variables.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: Image.asset(
                    'assets/R1.png',
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.2,
                  ),
                ),
                SizedBox(height: screenHeight * (40 / 812)),
                CustomButton(
                  text: "Sign In",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin()));
                  },
                  color: GlobalVariables.buttonColor,
                  textColor: GlobalVariables.backgroundColor,
                ),
                SizedBox(height: screenHeight * (20 / 812)),
                CustomButton(
                  text: "Create Account",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  color: GlobalVariables.backgroundColor,
                  textColor: GlobalVariables.textBlack,
                  borderColor: Colors.black,
                ),
                SizedBox(height: screenHeight * (35 / 812)),
                _OrDivider(),
                const SizedBox(height: 20),
                const Text(
                  "Another way to login",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: screenHeight * (30 / 812)),
                Container(
                  width: screenWidth * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildIcon("icons/gmail.png"),
                      buildIcon("icons/facebook.png"),
                      buildIcon("icons/google.png")
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildIcon(String iconPath) {
  return Container(
    child: Image.asset(
      iconPath,
      width: 30,
      height: 30,
    ),
  );
}

Widget _OrDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        const Expanded(child: Divider(color: Colors.black, thickness: 0.4)),
        const SizedBox(width: 10),
        const Text("OR",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(width: 10),
        const Expanded(child: Divider(color: Colors.black, thickness: 0.4)),
      ],
    ),
  );
}
