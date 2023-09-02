import 'package:flutter/material.dart';
import 'package:shopapp04/screen/sign_in/components/body.dart';
 
 class SignInScreen extends StatelessWidget {

  static String routeName = '/sign_in';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Sign In',textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff8b8b8b),
            fontSize: 18,
            ),
        ),
      ),
      body: const Body(),
    );
  }
}