import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 115,height: 115,
        child: Stack(            
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/dphai.png'),
            ),
            Positioned(
              bottom: 0,
              right: -10,
              child: SizedBox(
                height: 46,
                width: 46,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: const Color(0xfff5f6f9),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
                  ),
                  onPressed: (){},
                  child: SvgPicture.asset('assets/icons/Camera Icon.svg')
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}