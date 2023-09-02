import 'package:flutter/material.dart';

import 'package:shopapp04/contants.dart';
import 'package:shopapp04/screen/otp/components/otp_form.dart';
import 'package:shopapp04/size_confi.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20) ),
      child: SingleChildScrollView(
        child: Column(
          children: [          
            SizedBox(height: SizeConfig.screenHeight! * 0.05,),
            Text("OTP Verification",style: headingStyle,),
            const Text(
            'We sent your code to registered Phone Number',
            textAlign: TextAlign.center,
            ),
            buildTimer(),
            SizedBox(height: SizeConfig.screenHeight! * 0.15,),
            const OtpForm(),
            SizedBox(height: SizeConfig.screenHeight! * 0.1,),
            GestureDetector(
              onTap: () {
                
              },
              child: const Text('Resend OTP Code',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This code will Expired in '),
          TweenAnimationBuilder(
            tween: Tween(begin: 30.0,end: 0.0),
            duration: Duration(seconds: 30),
            builder: (context, value, child) =>
             Text(
              "00:${value.toInt()}",
              style: const TextStyle(
                color: kPrimaryColor,
              ),
              ),
              onEnd: () {},
          ),
        ],
      );
  }
}

