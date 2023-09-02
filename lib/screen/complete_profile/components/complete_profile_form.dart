import 'package:flutter/material.dart';
import 'package:shopapp04/components/custom_surfix_icon.dart';
import 'package:shopapp04/components/default_button.dart';
import 'package:shopapp04/components/form_error.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/screen/otp/otp_screen.dart';
import 'package:shopapp04/size_confi.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

  void addError({required String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [          
          SizedBox(height: getProportionateScreenHeight(30),),
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40),),
          DefaultButton(text: 'Continue', press: () {
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
              Navigator.pushNamed(context, OtpScreen.routeName);
            }
          },)
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
        keyboardType: TextInputType.name,
        onSaved: (newValue) => address = newValue!,
        onChanged: (value) {            
          if(value.isNotEmpty) {
           removeError(error: kAddressNullError);
          }
          return null;          
        },
        validator: (value) {
          if(value!.isEmpty) {
            addError(error: kAddressNullError);
            return '';
          }
          return null;
        },
        decoration:  const InputDecoration(
          labelText: 'Address',
          hintText: 'Enter your Address',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/Location point.svg',
          ),
        )
      );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
        keyboardType: TextInputType.phone,
        onSaved: (newValue) => phoneNumber = newValue!,
        onChanged: (value) {            
          if(value.isNotEmpty) {
           removeError(error: kPhoneNumberNullError);
          }
          return null;          
        },
        validator: (value) {
          if(value!.isEmpty) {
            addError(error: kPhoneNumberNullError);
            return '';
          }
          return null;
        },
        decoration:  const InputDecoration(
          labelText: 'Phone Number',
          hintText: 'Enter your Phone Number',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/Phone.svg',
          ),
        )
      );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
        keyboardType: TextInputType.name,
        onSaved: (newValue) => lastName = newValue!,
        onChanged: (value) {            
              if(value.isNotEmpty) {
               removeError(error: kNameNullError);
              }
              return null;          
            },
            validator: (value) {
              if(value!.isEmpty) {
                addError(error: kNameNullError);
                return '';
              }
              return null;
            },
        decoration:  const InputDecoration(
          labelText: 'Last Name',
          hintText: 'Enter your Late Name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/User.svg',
          ),
        )
      );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
            keyboardType: TextInputType.name,
            onSaved: (newValue) => firstName = newValue!,
            onChanged: (value) {            
              if(value.isNotEmpty) {
               removeError(error: kNameNullError);
              }
              return null;          
            },
            validator: (value) {
              if(value!.isEmpty) {
                addError(error: kNameNullError);
                return '';
              }
              return null;
            },
            decoration:  const InputDecoration(
              labelText: 'First Name',
              hintText: 'Enter your First Name',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: 'assets/icons/User.svg',
              ),
            )
          );
  }
}