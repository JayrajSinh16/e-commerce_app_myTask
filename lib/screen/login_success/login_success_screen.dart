import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {

  static String routeName = '/login_success';
  
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          'Login Success',
          style: TextStyle(
            color: Color(0xff8b8b8b),
            fontSize: 18,
            ),
          ),
      ),
      body:  const Body(),
    );
  }
}