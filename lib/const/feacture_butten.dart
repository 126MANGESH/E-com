import 'package:ecom/const/const.dart';
import 'package:flutter/material.dart';

Widget featureButton({required String icon, required String title}) {
  return Row(
    children: [
      Image.asset(icon, width: 60, fit: BoxFit.fill),
      const SizedBox(width: 10),
      title.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.padding(const EdgeInsets.all(3)).roundedSM.outerShadowSm.make();
}
