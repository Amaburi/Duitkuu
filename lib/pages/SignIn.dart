import 'package:duitkuproto/pages/Home.dart';
import 'package:flutter/material.dart';

import '../components/InputFieldSignIn.dart';
import '../components/SocialButton.dart';
import '../utils/AuthService.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showSpinner = false;

  void _signIn() async {
    setState(() {
      showSpinner = true;
    });
    try {
      await AuthService().loginWithEmailPassword(
        emailController.text.trim(),
        passwordController.text.trim(),
        context
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    } finally {
      setState(() {
        showSpinner = false;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF5774CD), Color(0xFFFCFCFC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.1),
              Text(
                'Login Here',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome back you’ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              InputField(
                label: 'Email',
                icon: Icons.email,
                controller: emailController,
                width: screenWidth * 0.8,
              ),
              SizedBox(height: 20),
              InputField(
                label: 'Password',
                icon: Icons.lock,
                controller: passwordController,
                width: screenWidth * 0.8,
                isPassword: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _signIn,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5774CD),
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  shadowColor: Color(0xFFCAD6FF),
                ),
                child: showSpinner
                    ? CircularProgressIndicator(
                  color: Colors.white,
                )
                    : Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Dont Have the Account? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF5774CD),
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              Text(
                'Or continue with',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialButton(
                    imageUrl: 'assets/facebook.png', // Replace with local asset
                    padding: EdgeInsets.all(2.62),
                  ),
                  SocialButton(
                    imageUrl: 'assets/google.png', // Replace with local asset
                    padding: EdgeInsets.all(2),
                  ),
                  SocialButton(
                    imageUrl: 'assets/apple.png', // Replace with local asset
                    padding: EdgeInsets.all(3),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




