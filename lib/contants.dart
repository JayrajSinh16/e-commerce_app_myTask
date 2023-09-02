import 'package:flutter/material.dart';
import 'package:shopapp04/size_confi.dart';

const kPrimaryColor = Color(0xffff7643);
const kPrimaryLightColor = Color(0xffffecdf);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xffffa53e),Color(0xffff7643)]
);
const kSecondaryColor= Color(0xff979797);
const kTextColor= Color(0xff757575);

const kAnimationDuration = Duration(milliseconds: 200);


final headingStyle = TextStyle(
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 1.5,
          );



final RegExp emailValidatorRegExp = 
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your Email";
const String kInvalidEmailError = "Please Enter a valid Email";
const String kPassNullError = "Please Enter your Password";
const String kShortPassError = "Password is too Short";
const String kMatchPassError = "Password don't match"; 
const String kNameNullError = 'Please enter your name';
const String kPhoneNumberNullError = 'Please enter your phone number';
const String kAddressNullError = 'Please enter your Address';

final otpInputDecoration = InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
                enabledBorder: outlineButton(),
                focusedBorder: outlineButton(),
              );

OutlineInputBorder outlineButton() {
  return OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: kTextColor,
                )
              );
}

