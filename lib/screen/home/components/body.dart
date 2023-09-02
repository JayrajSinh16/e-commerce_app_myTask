import 'package:flutter/material.dart';
import 'package:shopapp04/screen/home/components/popular_product.dart';
import 'package:shopapp04/screen/home/components/categories.dart';
import 'package:shopapp04/screen/home/components/discount_banner.dart';
import 'package:shopapp04/screen/home/components/home_header.dart';
import 'package:shopapp04/screen/home/components/special_offer.dart';
import 'package:shopapp04/size_confi.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30),),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30),),
            const Categories(),
            SizedBox(height: getProportionateScreenWidth(30),),
            const SpecialOffer(),
            SizedBox(height: getProportionateScreenWidth(30),),
            const PopularProduct(),
          ],
        ),
      ),
      );
  }
}
