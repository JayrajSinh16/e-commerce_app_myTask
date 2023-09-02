import 'package:flutter/material.dart';
import 'package:shopapp04/components/default_button.dart';
import 'package:shopapp04/models/product.dart';
import 'package:shopapp04/screen/details/components/color_dots.dart';
import 'package:shopapp04/screen/details/components/product_description.dart';
import 'package:shopapp04/screen/details/components/product_images.dart';
import 'package:shopapp04/screen/details/components/top_rounded_container.dart';
import 'package:shopapp04/size_confi.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product, 
                  OnTapSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xfff6f7f9), 
                  child: Column(
                    children: [
                      ColorDots(
                        product: product
                      ),
                      TopRoundedContainer(
                        color: Colors.white, 
                        child: Padding(
                          padding:EdgeInsets.only(
                            left:SizeConfig.screenWidth! * 0.15,
                            right: SizeConfig.screenWidth! * 0.15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40)
                            ),
                          child: DefaultButton(
                            text: "Add to Card", 
                            press: (){}
                          ),
                        ),
                      ),
                    ],
                  ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
