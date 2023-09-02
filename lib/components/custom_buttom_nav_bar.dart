import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/enums.dart';
import 'package:shopapp04/screen/home/home_screen.dart';
import 'package:shopapp04/screen/profile/profile_screen.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key, required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xffb6b6b6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            color: const Color(0xffdadada).withOpacity(0.15),
            blurRadius: 20,
          ),
        ]
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
            onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName), 
            icon: SvgPicture.asset(
              'assets/icons/Shop Icon.svg',
              // ignore: deprecated_member_use
              color: MenuState.home == selectedMenu ? kPrimaryColor : inActiveIconColor,
              ),
            ),
            IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset('assets/icons/Heart Icon.svg',
            // ignore: deprecated_member_use
            color: MenuState.favorite == selectedMenu ? kPrimaryColor : inActiveIconColor,
            ),
            ),
            IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg',
            // ignore: deprecated_member_use
            color: MenuState.message == selectedMenu ? kPrimaryColor : inActiveIconColor,
            ),
            ),
            IconButton(
            onPressed: ()=> Navigator.pushNamed(context, ProfileScreen.routeName), 
            icon: SvgPicture.asset('assets/icons/User Icon.svg',
            // ignore: deprecated_member_use
            color: MenuState.profile == selectedMenu ? kPrimaryColor : inActiveIconColor,
            ),
            ),
          ],
        ),
      ),
    );
  }
}