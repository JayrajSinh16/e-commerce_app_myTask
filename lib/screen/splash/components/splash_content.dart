import 'package:flutter/material.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/size_confi.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.image,
    required this.text,
  });

  final String text,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
      ),
      Text(text,textAlign: TextAlign.center,),
      const Spacer(flex:2),
      Image.asset(image,
      height: getProportionateScreenHeight(265),
      width: getProportionateScreenWidth(235),
      ),
      ],
    );
  }
}