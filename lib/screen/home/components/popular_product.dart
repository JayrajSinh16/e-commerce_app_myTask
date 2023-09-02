import 'package:flutter/material.dart';
import 'package:shopapp04/models/product.dart';
import 'package:shopapp04/screen/details/details_screen.dart';
import 'package:shopapp04/screen/home/components/popular_product_card.dart';
import 'package:shopapp04/screen/home/components/section_title.dart';
import 'package:shopapp04/size_confi.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Popular Products',
          press: (){},
        ),
        SizedBox(height: getProportionateScreenWidth(30),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
              demoProducts.length, 
              (index) => 
              PopularProductCard(
                product: demoProducts[index],
                press: () => Navigator.pushNamed(
                  context, 
                  DetailScreen.routeName,
                  arguments: ProductDetailsArguments(
                    product: demoProducts[index]
                  ),
                ),
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(20),)
            ]
          ),
        ),
      ],
    );
  }
}