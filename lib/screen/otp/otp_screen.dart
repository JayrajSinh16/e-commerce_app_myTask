import 'package:flutter/material.dart';
import 'components/body.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  static String routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification',
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