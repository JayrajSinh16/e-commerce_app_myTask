import 'package:flutter/material.dart';
import 'package:shopapp04/screen/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget{
  static String routeName ='/sign_up';

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign-Up',
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