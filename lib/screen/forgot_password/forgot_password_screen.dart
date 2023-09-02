import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password',
        style:TextStyle(
            color: Color(0xff8b8b8b),
            fontSize: 18,
            ),
          ),
      ),
      body: const Body(),
    );
  }
}