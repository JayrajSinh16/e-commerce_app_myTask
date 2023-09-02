import 'package:flutter/material.dart';
import 'package:shopapp04/components/social_card.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/screen/sign_up/sign_up_form.dart';
import 'package:shopapp04/size_confi.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04,),
                Text(
                  'Register Account',
                  style: headingStyle,
                ),
                const Text(
                  'Complete your details or continue \nwith Social Media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.07,),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.07,),
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialCard(
                          icon: 'assets/icons/google-icon.svg',
                          press: () {},
                        ),
                        SocialCard(
                          icon: 'assets/icons/facebook-2.svg',
                          press: () {},
                        ),
                        SocialCard(
                          icon: 'assets/icons/twitter.svg',
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    const Text(
                      'By continuing your confirm that you agree\nwith our terms ans Condition',
                      textAlign: TextAlign.center,
                      )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}



