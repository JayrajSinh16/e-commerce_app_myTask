import 'package:flutter/material.dart';
import 'package:shopapp04/components/custom_buttom_nav_bar.dart';
import 'package:shopapp04/enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomBar(selectedMenu: MenuState.home),
    );
  }
}