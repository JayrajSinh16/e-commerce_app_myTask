import 'package:flutter/material.dart';
import 'package:shopapp04/screen/splash/components/body.dart';

import '../../size_confi.dart';

class SplashScreen extends StatelessWidget {

  static String routeName = '/spllash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}