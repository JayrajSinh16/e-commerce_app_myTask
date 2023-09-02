import 'package:flutter/material.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/screen/complete_profile/components/complete_profile_form.dart';
import 'package:shopapp04/size_confi.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.02,),              
              Text('Complete Profile',style: headingStyle,),
              const Text(
                'Complete your details or \ncontinue with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05,),
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30),),
              const Text(
                'By continuing your confirm that you agree \nwith our Terms and Conditions',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

