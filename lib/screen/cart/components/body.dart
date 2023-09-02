import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp04/models/cart.dart';
import 'package:shopapp04/screen/cart/components/cart_item_card.dart';
import 'package:shopapp04/size_confi.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
            itemCount: demoCarts.length,
            itemBuilder: (context,index)
            => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                direction: DismissDirection.endToStart,
                key: Key(demoCarts[index].product.id.toString()),
                background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffffe6e6),
                ),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset('assets/icons/Trash.svg'),
                  ],
                )
              ),
              child: CartItemCard(cart: demoCarts[index],),
              onDismissed: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              ),
            ),
      ),
    );
  }
}

