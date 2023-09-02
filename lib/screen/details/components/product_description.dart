import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/models/product.dart';
import 'package:shopapp04/size_confi.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product, required this.OnTapSeeMore,
  });

  final Product product;
  final GestureTapCallback OnTapSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          ),
          child: Text(
            product.title,
            textAlign: TextAlign.left,
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 5,),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration:   BoxDecoration(
              color: product.isFavourite ? const Color(0xffffe6e6) : const Color(0xfff5f6f9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                ),
            ),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              colorFilter: ColorFilter.mode(
                product.isFavourite ? const Color(0xffff4848): const Color(0xffdbdee4), 
                BlendMode.srcIn
              ),
              ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left:getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(
            vertical: 10,
            horizontal: getProportionateScreenWidth(20)
          ),
          child: GestureDetector(
            onTap: OnTapSeeMore,
            child: const Row(
              children: [
                Text(
                  'See More Detail',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios,size: 12,color: kPrimaryColor,)
              ],
            ),
          ),
        )
      ],
    );
  }
}

