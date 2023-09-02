import 'package:flutter/material.dart';
import 'package:shopapp04/components/custom_buttom_nav_bar.dart';
import 'package:shopapp04/enums.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile' ;

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Color(0xff8b8b8b),
            fontSize: 18,
            ),
        ),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}

