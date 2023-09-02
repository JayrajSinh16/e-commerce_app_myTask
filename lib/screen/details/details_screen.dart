import 'package:flutter/material.dart';
import 'package:shopapp04/screen/details/components/custom_app_bar.dart';
import 'components/body.dart';

import '../../models/product.dart';

class DetailScreen extends StatelessWidget {

  static String routeName = '/details';

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final ProductDetailsArguments agrs =
     ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return  Scaffold(
      backgroundColor: const Color(0xfff5f6f9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating)),
        body: Body(product: agrs.product),
    );
  }
}





class ProductDetailsArguments{

  final Product product;
  ProductDetailsArguments({required this.product});

}