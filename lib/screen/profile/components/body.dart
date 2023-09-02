
import 'package:flutter/material.dart';
import 'package:shopapp04/screen/profile/components/profile_menu.dart';
import 'package:shopapp04/screen/profile/components/profile_picture.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePicture(),
        const SizedBox(height: 20,),
        ProfileMenu(
          press: (){},
          text: "My Account",
          icon: 'assets/icons/User Icon.svg',
        ),
        ProfileMenu(
          press: (){},
          text: "Notification",
          icon: 'assets/icons/Bell.svg',
        ),
        ProfileMenu(
          press: (){},
          text: "Settings",
          icon: 'assets/icons/Settings.svg',
        ),
        ProfileMenu(
          press: (){},
          text: "Help Center",
          icon: 'assets/icons/Question mark.svg',
        ),
        ProfileMenu(
          press: (){},
          text: "Log Out",
          icon: 'assets/icons/Log out.svg',
        ),
      ],
    );
  }
}