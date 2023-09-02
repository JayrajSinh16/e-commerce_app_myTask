import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/size_confi.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.text, required this.press,
  });

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: CupertinoButton(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),                        
        onPressed: press,
        child: Text(text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(17),fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}