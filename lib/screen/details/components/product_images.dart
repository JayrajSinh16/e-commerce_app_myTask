import 'package:flutter/material.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/models/product.dart';
import 'package:shopapp04/size_confi.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {

  int selectedImage =0 ; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length, 
            (index) => buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
              height: getProportionateScreenWidth(48),
              margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
              width: getProportionateScreenWidth(48),
              padding: EdgeInsets.all(getProportionateScreenHeight(8)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: selectedImage == index ?
                            kPrimaryColor : Colors.transparent),
              ),
              child: Image.asset(widget.product.images[index]),
            ),
    );
  }
}