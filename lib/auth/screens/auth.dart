import 'package:flutter/material.dart';
import 'package:rankify/auth/screens/signin.dart';
import 'package:rankify/auth/screens/signup.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/constants/global_variables.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: Image.asset(
                      'assets/R2.png',
                      width: 230,
                      height: 224,
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                    text: "Sign In",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signin()));
                    },
                    color: GlobalVariables.buttonColor,
                    textColor: GlobalVariables.backgroundColor,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Create Account",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    color: GlobalVariables.backgroundColor,
                    textColor: GlobalVariables.textBlack,
                  ),
                  const SizedBox(height: 35),
                  _OrDivider(),
                  const SizedBox(height: 20),
                  const Text(
                    "Another way to login",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 30),
                  _buildSocialIcons(), // Function for side-by-side images
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// **Function to create side-by-side images**
Widget _buildSocialIcons() {
  return Padding(
    padding: const EdgeInsets.symmetric(
        horizontal: 30), // Increased padding on both sides
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the images
      children: [
        _buildCircleImage('assets/R2.png'), // Left image
        const SizedBox(width: 100), // Reduced space between images
        _buildCircleImage('assets/R2.png'), // Right image
      ],
    ),
  );
}

/// **Function to create circular image with click event**
Widget _buildCircleImage(String imagePath) {
  return GestureDetector(
    onTap: () => print("$imagePath Clicked"), // Click event
    child: ClipOval(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38, // Border color (light black)
            width: 3, // Border width
          ),
          color: Color(0x1f080808),
        ), // Light black background
        child: Image.asset(
          imagePath,
          width: 50, // Reduced size
          height: 50, // Reduced size
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

/// **OR Divider Widget**
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
