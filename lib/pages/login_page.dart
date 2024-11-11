import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // Import this for TapGestureRecognizer

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Login bg.png"),
            fit: BoxFit.cover, // Covers the entire screen
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 85),
            child: Container(
              width: 280,  // Set width of the container
              height: 350,  // Increased height to fit the button
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                //color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Username TextField
                  SizedBox(
                    width: 270,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        filled: true,
                        fillColor: Colors.grey[800]?.withOpacity(0.5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(color: Color(0xFFACACAC)),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20), // Space between text fields
                  // Password TextField
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: SizedBox(
                      width: 270,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.grey[800]?.withOpacity(0.5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Color(0xFFACACAC)),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 14, // Adjust font size as needed
                        ),
                        children: [
                          TextSpan(text: "Don't have an account yet? "),
                          TextSpan(
                            text: 'Sign Up here',
                            style: TextStyle(
                              color: Colors.white, // Change color here
                              decoration: TextDecoration.underline, // Underline decoration
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              // Action to perform when "Sign Up here" is tapped
                              print('Sign Up tapped!'); // Replace this with your action
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Space between text and button
                  // Sign Up Button
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 60,
                      width: 270,
                      child: TextButton(
                        onPressed: () {
                          // Action to perform when the button is tapped
                          print('Sign Up Button tapped!'); // Replace with your sign-up action
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF13294C), // Button background color
                          foregroundColor: Colors.white, // Change from primary to foregroundColor
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Button padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Rounded corners
                          ),
                        ),
                        child: Text('Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                          ),
                        ), // Button text
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
