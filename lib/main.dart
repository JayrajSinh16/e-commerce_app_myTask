import 'package:flutter/material.dart';
import 'package:shopapp04/routs.dart';
import 'package:shopapp04/screen/splash/splash_screen.dart';
import 'package:shopapp04/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IRON',
      theme: theme(),
      //home : const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

