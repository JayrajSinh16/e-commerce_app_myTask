import 'package:flutter/material.dart';
import 'package:shopapp04/components/custom_surfix_icon.dart';
import 'package:shopapp04/components/default_button.dart';
import 'package:shopapp04/components/form_error.dart';
import 'package:shopapp04/components/no_account.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/screen/sign_in/sign_in_screen.dart';
import 'package:shopapp04/size_confi.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! *0.04),
            Text('Forgot Password',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            const Text(
              'Please enter your email  and we will send \n you a link to return to your account',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight! *0.1),
            const ForgotPassForm(),
          ],
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {

  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;

  void addError({required String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({ required String error} ){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue!,
          onChanged: (value) {            
            if(value.isNotEmpty) {
             removeError(error: kEmailNullError);
            }
            else if(emailValidatorRegExp.hasMatch(value)){
              removeError(error: kInvalidEmailError);
            }
            return null;          
          },
          validator: (value) {
            if(value!.isEmpty) {
              addError(error: kEmailNullError);
              return '';
            }
            else if(!emailValidatorRegExp.hasMatch(value)){
              addError(error: kInvalidEmailError);
              return '';
            }
            return null;
          },
              decoration:  const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your Email',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(
                  svgIcon: 'assets/icons/Mail.svg',
                ),
              )
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight! * 0.1,),
            DefaultButton(
            text: "Continue",
            press: () {
              if(_formKey.currentState!.validate()){

                _formKey.currentState!.save();
                Navigator.popAndPushNamed(context,SignInScreen.routeName);
              }
              return;
            },
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.1,),
            const NoAccountText(),
            ],),
        ),
      );
  }
}