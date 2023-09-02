import 'package:flutter/material.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/models/cart.dart';
import 'package:shopapp04/size_confi.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key, required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Image.asset(cart.product.images[0]),
            ),
            ),
        ),
        SizedBox(width: getProportionateScreenWidth(20),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: const TextStyle(fontSize: 16,color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 10,),
            Text.rich(
              TextSpan(
                text: '₹${cart.product.price}',
                style: const TextStyle(color: kPrimaryColor,),
                children: [
                  TextSpan(
                    text:' x ${cart.numOfItems}',
                    style: const TextStyle(
                      color: kTextColor,
                    ),
                    ),
                ]
              )
            )
          ],
        )
      ],
    );
  }
}