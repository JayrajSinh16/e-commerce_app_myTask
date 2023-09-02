import 'package:flutter/material.dart';
import 'package:shopapp04/components/rounded_icon_btn.dart';
import 'package:shopapp04/contants.dart';
import 'package:shopapp04/models/product.dart';
import 'package:shopapp04/size_confi.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {

  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length, 
            (index) => ColorDot(
              color: widget.product.colors[index],
              isSelected: selectedColor == index ,
              ),
           ),
           const Spacer(),
           RoundedIconBtn(icon: Icons.remove, press: (){}),
           SizedBox(width: getProportionateScreenWidth(15),),
           RoundedIconBtn(icon: Icons.add, press: (){}),

        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
   required this.color,  this.isSelected = false ,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ?  kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),
      ),
    );
  }
}