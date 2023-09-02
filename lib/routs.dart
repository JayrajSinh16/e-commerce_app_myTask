import 'package:flutter/widgets.dart';
import 'package:shopapp04/screen/cart/cart_screen.dart';
import 'package:shopapp04/screen/complete_profile/complete_profile.dart';
import 'package:shopapp04/screen/details/details_screen.dart';
import 'package:shopapp04/screen/forgot_password/forgot_password_screen.dart';
import 'package:shopapp04/screen/home/home_screen.dart';
import 'package:shopapp04/screen/login_success/login_success_screen.dart';
import 'package:shopapp04/screen/otp/otp_screen.dart';
import 'package:shopapp04/screen/profile/profile_screen.dart';
import 'package:shopapp04/screen/sign_in/sign_in_screen.dart';
import 'package:shopapp04/screen/sign_up/sign_up_screen.dart';
import 'package:shopapp04/screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName :(context) => const SplashScreen(),
  SignInScreen.routeName:(context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName :(context) => const CompleteProfileScreen(),
  OtpScreen.routeName:(context) => const OtpScreen(),
  HomeScreen.routeName:(context) => const HomeScreen(),
  DetailScreen.routeName:(context) => const DetailScreen(),
  CartScreen.routeName:(context) => const CartScreen(),
  ProfileScreen.routeName:(context) => const ProfileScreen(),
};