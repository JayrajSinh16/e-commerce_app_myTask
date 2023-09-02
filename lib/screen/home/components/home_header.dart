import 'package:flutter/material.dart';
import 'package:shopapp04/screen/cart/cart_screen.dart';
import 'package:shopapp04/screen/home/components/icon_btn_with_counter.dart';
import 'package:shopapp04/screen/home/components/search_field.dart';
import 'package:shopapp04/size_confi.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            press: (){},
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}

