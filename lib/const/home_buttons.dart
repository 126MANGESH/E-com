

import 'package:ecom/const/const.dart';
import 'package:flutter/material.dart';

Widget homebuttons ({width,height,icon,String?title,onPress }) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon , width: 22,),
      5.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  
  ).box.rounded.white.size(
    width, 
    height
  )
    .shadow5xl.make();
}