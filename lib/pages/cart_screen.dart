import 'package:ecom/const/const.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: "Please select items for Cart"
          .text
          .color(fontGrey)
          .size(22)
          .fontFamily(bold)
          .makeCentered(),
    );
  }
}
