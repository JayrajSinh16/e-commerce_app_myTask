import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp04/contants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key, required this.text, required this.icon, required this.press,
  });

  final String text,icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color(0xfff5f6f9),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(icon,
            width: 22,
            // ignore: deprecated_member_use
            color: kPrimaryColor,
            ),
            const SizedBox(width: 20,),
            Expanded(child: Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ),
            const Icon(Icons.arrow_forward_ios,color: Color.fromARGB(255, 186, 186, 186),),
          ],
        )
      ),
    );
  }
}